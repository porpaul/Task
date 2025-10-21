# Export all READY tasks with "GroupBuya" in the name, with fallback + detailed report
$OutDir = 'C:\project\backup\tasks\GroupBuya'
if (-not (Test-Path $OutDir)) { New-Item -Path $OutDir -ItemType Directory -Force | Out-Null }

$tasks = Get-ScheduledTask | Where-Object {
    $_.TaskName -like '*GroupBuya*' -and $_.State -eq 'Ready'
}

if (-not $tasks) {
    Write-Output "No GroupBuya tasks in State=Ready."
    return
}

$exported = 0
$failed = New-Object System.Collections.Generic.List[object]

foreach ($t in $tasks) {
    $fullName = "$($t.TaskPath)$($t.TaskName)"          # e.g. "\MyFolder\Task"
    $relativePath = $t.TaskPath.Trim('\')                # folder pieces (if any)
    $targetDir = if ($relativePath) {
        $p = Join-Path $OutDir $relativePath
        if (-not (Test-Path $p)) { New-Item -Path $p -ItemType Directory -Force | Out-Null }
        $p
    } else { $OutDir }

    $safeName = ($t.TaskName -replace '[\\/:*?"<>|]', '_') + '.xml'
    $file = Join-Path $targetDir $safeName

    $ok = $false
    $errMsg = $null

    # --- Attempt 1: Export-ScheduledTask
    try {
        Export-ScheduledTask -TaskName $t.TaskName -TaskPath $t.TaskPath |
            Out-File -FilePath $file -Encoding utf8 -Force
        if ((Test-Path $file) -and ((Get-Item $file).Length -gt 0)) { $ok = $true }
    } catch {
        $errMsg = $_.Exception.Message
    }

    # --- Fallback: schtasks /query /xml
    if (-not $ok) {
        try {
            $null = schtasks /query /tn $fullName /xml 2>$null | Out-File -FilePath $file -Encoding utf8 -Force
            if ((Test-Path $file) -and ((Get-Item $file).Length -gt 0)) { $ok = $true }
            if (-not $ok -and -not $errMsg) { $errMsg = "Empty output from schtasks." }
        } catch {
            $errMsg = if ($errMsg) { "$errMsg | Fallback: $($_.Exception.Message)" } else { $_.Exception.Message }
        }
    }

    if ($ok) {
        $exported++
        Write-Output "Exported: $fullName -> $file"
    } else {
        $failed.Add([pscustomobject]@{
            Task = $fullName
            Reason = $(if ($errMsg) { $errMsg } else { "Unknown error" })
        })
        Write-Warning "FAILED:  $fullName  ($errMsg)"
    }
}

Write-Output "`nSummary:"
Write-Output "  Total READY GroupBuya tasks: $($tasks.Count)"
Write-Output "  Exported: $exported"
Write-Output "  Failed:   $($failed.Count)"

if ($failed.Count -gt 0) {
    Write-Output "`nFailures:"
    $failed | Format-Table -AutoSize
}

Write-Output "`nOutput folder: $OutDir"
