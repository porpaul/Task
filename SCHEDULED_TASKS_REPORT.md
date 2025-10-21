# Scheduled Tasks Report - GroupBuya & SL886 Platforms

**Generated on:** October 11, 2025  
**Export Location:** `C:\project\backup\tasks\`  
**Scripts Used:** `ExportGroupBuya.ps1` and `ExportSL886.ps1`

---

## 📋 Executive Summary

This report provides a comprehensive overview of all scheduled tasks for both GroupBuya (e-commerce platform) and SL886 (financial platform). The tasks are automatically exported from Windows Task Scheduler and analyzed for scheduling patterns, execution frequencies, and business functions.

### Key Statistics
- **GroupBuya:** 4 active scheduled tasks
- **SL886:** 18+ active scheduled tasks
- **Total Automation Scripts:** 22+ .bat files and Yii2 console commands
- **Peak Activity:** Business hours with continuous monitoring

---

## 🟢 GroupBuya Scheduled Tasks

### Task Summary
| Task Name | Script/Command | Schedule | Last Updated |
|-----------|----------------|----------|--------------|
| GroupBuya - Ads Boosting | `yii2.bat data/adsboosting` | Every 15 min (9 AM - 9 PM) | Feb 12, 2023 |
| GroupBuya - AI SEO | `yii.bat seo/aiseo` + `seo/jetso` | Weekly (Sunday 17:20) | Jul 12, 2023 |
| GroupBuya - check Recomm Service Web | `checkRecommServiceWeb.bat` | Every 15 min (24/7) | Jul 18, 2023 |
| GroupBuya - Update Jetso End Date | `[Script path to be determined]` | `[Schedule to be analyzed]` | Recent |
| GroupBuya - Video | `[Script path to be determined]` | `[Schedule to be analyzed]` | Recent |

### Detailed Schedule Analysis

#### 1. GroupBuya - Ads Boosting
- **Command:** `C:\project\yii2\GroupBuya\yii2.bat data/adsboosting`
- **Schedule:** Daily repetition every 15 minutes for 12 hours (9:00 AM - 9:00 PM)
- **Purpose:** Continuous ads boosting functionality for e-commerce platform
- **Working Directory:** `C:\project\yii2\GroupBuya\`
- **Execution Policy:** Stop existing instances before starting new ones

#### 2. GroupBuya - AI SEO
- **Commands:** 
  - `C:\project\yii2\GroupBuya\yii.bat seo/aiseo`
  - `C:\project\yii2\GroupBuya\yii.bat seo/jetso`
- **Schedule:** Weekly on Sundays at 17:20 (5:20 PM)
- **Purpose:** AI-powered SEO optimization and jetso (deals) content generation
- **Working Directory:** `C:\project\yii2\GroupBuya\`
- **Execution Policy:** Stop existing instances before starting new ones

#### 3. GroupBuya - check Recomm Service Web
- **Command:** `C:\project\yii2\GroupBuya\exec\checkRecommServiceWeb.bat`
- **Schedule:** Daily repetition every 15 minutes for 24 hours
- **Purpose:** Continuous monitoring of recommendation service web status
- **Working Directory:** `C:\project\yii2\GroupBuya\exec\`
- **Execution Policy:** Stop existing instances before starting new ones

---

## 🔵 SL886 Scheduled Tasks

### Task Summary
| Task Name | Script/Command | Schedule | Last Updated |
|-----------|----------------|----------|--------------|
| SL886 - Agent Advertisement | `sl886_agent_adv.bat` | Every 2 hours (24/7) | Jun 26, 2025 |
| SL886 - AI Backtest | `unified_trading_skip_ai.bat` | Weekdays 19:00 | Sep 27, 2025 |
| SL886 - Archive | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Backup tblstockfutu | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Bot Feature by System Notification | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Bot Feature Notification | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - ChatGPT Earningscalls | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - ChatGPT Report Analysis | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - FBPost News | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Grab StockPrice - Day End QUOTE- HK | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Handle Whatsapp Failures | `handle_whatsapp_failures.bat` | Daily 23:15 | Aug 28, 2025 |
| SL886 - Hkexnewstext | `yii.bat hkexnewstext` | Hourly (18:00-08:00) | Jun 18, 2024 |
| SL886 - Message Notification | Multiple bat files | 3x daily (weekdays) | Aug 20, 2025 |
| SL886 - Stock AI Desc | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Stock AI Recalc | `yii.bat stockai/recalc` | Weekly (Tue-Sat 04:00) | Apr 10, 2024 |
| SL886 - Update Day Trade Analysis | `[To be analyzed]` | `[To be analyzed]` | - |
| Sl886 - User-Oriented Feature | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Whatsapp Jobs - Today | `replyjobs_today.bat` | Every 3 hours (24/7) | Jun 6, 2025 |

### Detailed Schedule Analysis

#### 1. SL886 - Agent Advertisement
- **Command:** `C:\project\mcp-client\sl886_agent_adv.bat`
- **Schedule:** Daily repetition every 2 hours for 24 hours starting at 16:28
- **Purpose:** AI agent advertisement processing and management
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Time Limit:** 1 hour
- **Execution Policy:** Stop existing instances before starting new ones

#### 2. SL886 - AI Backtest
- **Command:** `C:\project\mcp-client\scripts\sl886\unified_trading_skip_ai.bat`
- **Schedule:** Weekly on weekdays (Monday-Friday) at 19:00 (7:00 PM)
- **Purpose:** AI backtesting for trading strategies
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Policy:** Ignore new instances if already running

#### 3. SL886 - Handle Whatsapp Failures
- **Command:** `C:\project\mcp-client\handle_whatsapp_failures.bat`
- **Schedule:** Daily at 23:15 (11:15 PM)
- **Purpose:** WhatsApp failure handling and recovery operations
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Policy:** Ignore new instances if already running

#### 4. SL886 - Hkexnewstext
- **Command:** `C:\project\yii2\SL886\yii.bat hkexnewstext`
- **Schedule:** Daily repetition every 1 hour for 14 hours starting at 18:00 (6:00 PM - 8:00 AM)
- **Purpose:** HKEX news text processing and analysis
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Policy:** Stop existing instances before starting new ones

#### 5. SL886 - Message Notification
- **Commands:**
  - `C:\project\yii2\SL886\exec\process_reports.bat`
  - `C:\project\mcp-client\notify_agent.bat`
  - `C:\project\mcp-client\message_notification.bat`
- **Schedule:** Weekdays (Monday-Friday) at 08:45, 12:30, and 21:30
- **Purpose:** Multi-step message notification system
- **Working Directory:** Various (SL886\exec\ and mcp-client\)
- **Execution Time Limit:** 4 hours
- **Execution Policy:** Stop existing instances before starting new ones

#### 6. SL886 - Stock AI Recalc
- **Command:** `C:\project\yii2\SL886\yii.bat stockai/recalc`
- **Schedule:** Weekly on Tuesday through Saturday at 04:00 (4:00 AM)
- **Purpose:** Stock AI recalculation and analysis
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Policy:** Ignore new instances if already running

#### 7. SL886 - Whatsapp Jobs - Today
- **Command:** `C:\project\mcp-client\replyjobs_today.bat`
- **Schedule:** Daily repetition every 3 hours for 24 hours starting at 18:21
- **Purpose:** WhatsApp job processing and management
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Time Limit:** 1 hour
- **Execution Policy:** Stop existing instances before starting new ones

---

## 📊 Analysis & Insights

### Platform Comparison

| Aspect | GroupBuya | SL886 |
|--------|-----------|-------|
| **Total Tasks** | 4+ | 18+ |
| **Primary Focus** | E-commerce optimization | Financial data processing |
| **Peak Frequency** | Every 15 minutes | Every 1-3 hours |
| **Operating Hours** | Mixed (24/7 and business hours) | Business hours + overnight processing |
| **AI Integration** | SEO and content generation | Trading, analysis, and backtesting |
| **External Integration** | Recommendation services | WhatsApp, MCP agents |

### Time Distribution Analysis

#### GroupBuya Activity Timeline
- **09:00-21:00:** Continuous ads boosting (every 15 minutes)
- **24/7:** Recommendation service monitoring (every 15 minutes)
- **Sunday 17:20:** Weekly AI SEO processing

#### SL886 Activity Timeline
- **04:00:** Weekly stock AI recalculation (Tuesday-Saturday)
- **08:45:** Morning message notifications (weekdays)
- **12:30:** Midday message notifications (weekdays)
- **16:28+:** Agent advertisement (every 2 hours)
- **18:00-08:00:** Hourly HKEX news processing
- **18:21+:** WhatsApp jobs (every 3 hours)
- **19:00:** Daily AI backtesting (weekdays)
- **21:30:** Evening message notifications (weekdays)
- **23:15:** Daily WhatsApp failure handling

### Resource Utilization Patterns

#### High-Frequency Tasks (≤ 1 hour intervals)
1. **GroupBuya - Ads Boosting** (15 minutes)
2. **GroupBuya - check Recomm Service Web** (15 minutes)
3. **SL886 - Hkexnewstext** (1 hour)

#### Medium-Frequency Tasks (1-6 hour intervals)
1. **SL886 - Agent Advertisement** (2 hours)
2. **SL886 - Whatsapp Jobs - Today** (3 hours)
3. **SL886 - Message Notification** (3 times daily)

#### Low-Frequency Tasks (Daily/Weekly)
1. **GroupBuya - AI SEO** (Weekly)
2. **SL886 - AI Backtest** (Weekdays)
3. **SL886 - Stock AI Recalc** (5 days/week)
4. **SL886 - Handle Whatsapp Failures** (Daily)

---

## 🛠 Technical Implementation Details

### Script Types and Locations

#### GroupBuya Scripts
- **Yii2 Console Commands:** `yii.bat` and `yii2.bat` with various arguments
- **Custom Batch Files:** Located in `C:\project\yii2\GroupBuya\exec\`
- **Working Directory:** `C:\project\yii2\GroupBuya\`

#### SL886 Scripts
- **Yii2 Console Commands:** `yii.bat` with financial-specific arguments
- **MCP Client Scripts:** Located in `C:\project\mcp-client\`
- **Custom Batch Files:** Mixed locations (SL886\exec\ and mcp-client\)
- **Working Directories:** Multiple (`C:\project\yii2\SL886\` and `C:\project\mcp-client\`)

### Execution Policies

| Policy | GroupBuya Tasks | SL886 Tasks | Purpose |
|--------|-----------------|-------------|---------|
| **StopExisting** | 3 tasks | 8+ tasks | Prevent overlapping executions |
| **IgnoreNew** | 0 tasks | 3+ tasks | Allow long-running processes |
| **Multiple Triggers** | 1 task | 2+ tasks | Complex scheduling needs |

### Security Context
- **System Account (S-1-5-18):** Used for core system tasks
- **User Account:** Used for interactive and file-based operations
- **Administrator Privileges:** Required for task export and system-level operations

---

## 🔧 Maintenance & Monitoring

### Health Check Recommendations

1. **Monitor High-Frequency Tasks:** Ensure 15-minute and hourly tasks don't accumulate failures
2. **Verify AI Components:** Check AI backtesting and SEO tasks for consistent execution
3. **WhatsApp Integration:** Monitor failure handling and job processing tasks
4. **Database Operations:** Verify stock data backup and calculation tasks

### Performance Considerations

1. **Resource Overlap:** Multiple tasks running simultaneously during peak hours
2. **Network Dependencies:** External API calls for financial data and AI services
3. **Storage Requirements:** Log files and data exports from continuous processing
4. **Execution Time Limits:** Some tasks have 1-4 hour limits to prevent runaway processes

---

## 📁 File Locations & Backup

### Export Locations
- **GroupBuya Tasks:** `C:\project\backup\tasks\GroupBuya\`
- **SL886 Tasks:** `C:\project\backup\tasks\SL886\`
- **Export Scripts:** `C:\project\backup\tasks\ExportGroupBuya.ps1` and `ExportSL886.ps1`

### Key Directories
- **GroupBuya Platform:** `C:\project\yii2\GroupBuya\`
- **SL886 Platform:** `C:\project\yii2\SL886\`
- **MCP Client:** `C:\project\mcp-client\`
- **Scripts & Utilities:** Various `\exec\` subdirectories

---

## 📞 Support & Documentation

### For Issues or Changes
1. **Task Scheduler Access:** Requires administrator privileges
2. **Script Modifications:** Update both .bat files and task definitions
3. **Schedule Changes:** Use Windows Task Scheduler GUI or PowerShell commands
4. **Monitoring:** Check Windows Event Logs for task execution history

### Related Documentation
- Platform-specific README files in respective project directories
- Copilot instructions: `.github\copilot-instructions.md` in each project
- Task execution logs in project directories

---

**Report End** | Generated by automated export scripts | October 11, 2025