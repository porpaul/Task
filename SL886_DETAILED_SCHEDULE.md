# SL886 Platform - Scheduled Tasks Detailed Analysis

**Generated on:** October 11, 2025  
**Platform:** SL886 Financial Analysis Platform  
**Export Source:** Windows Task Scheduler XML exports  
**Total Active Tasks:** 18

---

## 📊 Executive Summary

SL886 is a comprehensive financial analysis platform with automated task scheduling for:
- **AI-powered financial analysis** and backtesting
- **Real-time market data processing** from Hong Kong Stock Exchange (HKEX)
- **WhatsApp integration** for notifications and customer service
- **Social media posting** and content management
- **Data archiving** and backup operations

### Key Statistics
- **18 active scheduled tasks** with varying frequencies
- **Business hours focus** - Most tasks run during market hours (weekdays)
- **High-frequency operations** - Some tasks run every 5-15 minutes during active periods
- **AI integration** - Multiple ChatGPT/AI-powered analysis tasks
- **Multi-channel automation** - WhatsApp, Facebook, and web notifications

---

## 📋 Task Summary Table

| Task Name | Command/Script | Schedule | Execution Policy | Last Updated |
|-----------|----------------|----------|------------------|--------------|
| SL886 - Agent Advertisement | `sl886_agent_adv.bat` | Every 2 hours (24/7) | StopExisting | Jun 26, 2025 |
| SL886 - AI Backtest | `unified_trading_skip_ai.bat` | Weekdays 19:00 | IgnoreNew | Sep 27, 2025 |
| SL886 - Archive | `yii.bat archive` | Daily 04:30 | StopExisting | Jun 1, 2024 |
| SL886 - Backup tblstockfutu | `archive_tblstockfutu.bat` | Weekly Friday 20:00 | StopExisting | Mar 31, 2023 |
| SL886 - Bot Feature by System Notification | `notify_agent_system.bat` | Weekdays 21:10 | StopExisting | Jul 23, 2025 |
| SL886 - Bot Feature Notification | `notify_agent.bat` | Complex schedule (see details) | IgnoreNew | May 27, 2025 |
| SL886 - ChatGPT Earningscalls | `yii.bat earningscalls/do` | Every 3 hours (24/7) | StopExisting | Mar 23, 2024 |
| SL886 - ChatGPT Report Analysis | Multiple commands | Every 15 min (07:00-24:00) | StopExisting | Dec 20, 2024 |
| SL886 - FBPost News | `yii.bat fbpost/news` | Every 5 minutes (24/7) | IgnoreNew | Oct 31, 2023 |
| SL886 - Grab StockPrice - Day End QUOTE- HK | Multiple commands | Weekdays 16:15 | StopExisting | Dec 21, 2018 |
| SL886 - Handle Whatsapp Failures | `handle_whatsapp_failures.bat` | Daily 23:15 | IgnoreNew | Aug 28, 2025 |
| SL886 - Hkexnewstext | `yii.bat hkexnewstext` | Hourly (18:00-08:00) | StopExisting | Jun 18, 2024 |
| SL886 - Message Notification | Multiple commands | 3x daily weekdays | StopExisting | Aug 20, 2025 |
| SL886 - Stock AI Desc | `yii.bat stockai/aidesc` | Every 2 hours (18:30-04:30) | IgnoreNew | Jan 2, 2025 |
| SL886 - Stock AI Recalc | `yii.bat stockai/recalc` | Tue-Sat 04:00 | IgnoreNew | Apr 10, 2024 |
| SL886 - Update Day Trade Analysis | `update_day_trade_analysis.bat` | Complex weekday schedule | Parallel | Oct 10, 2025 |
| Sl886 - User-Oriented Feature | `[To be analyzed]` | `[To be analyzed]` | `[To be analyzed]` | - |
| SL886 - Whatsapp Jobs - Today | `replyjobs_today.bat` | Every 3 hours (24/7) | StopExisting | Jun 6, 2025 |

---

## 🔍 Detailed Schedule Analysis

### 1. SL886 - Agent Advertisement
- **Command:** `C:\project\mcp-client\sl886_agent_adv.bat`
- **Schedule:** Daily repetition every 2 hours for 24 hours starting at 16:28
- **Purpose:** AI agent advertisement processing and management for financial platform marketing
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Time Limit:** 1 hour
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** June 26, 2025

### 2. SL886 - AI Backtest
- **Command:** `C:\project\mcp-client\scripts\sl886\unified_trading_skip_ai.bat`
- **Schedule:** Weekly on weekdays (Monday-Friday) at 19:00 (7:00 PM)
- **Purpose:** AI backtesting for trading strategies and performance analysis
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Policy:** Ignore new instances if already running (prevents overlap)
- **Created:** September 27, 2025

### 3. SL886 - Archive
- **Command:** `C:\project\yii2\SL886\yii.bat archive`
- **Schedule:** Daily at 04:30 AM
- **Purpose:** Daily data archiving and cleanup operations
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Time Limit:** 2 hours
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** June 1, 2024

### 4. SL886 - Backup tblstockfutu
- **Command:** `C:\project\yii2\sl886\exec\archive_tblstockfutu.bat`
- **Schedule:** Weekly on Friday at 20:00 (8:00 PM)
- **Purpose:** Weekly backup of Futu Securities stock data table
- **Working Directory:** `C:\project\yii2\sl886\exec\`
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** March 31, 2023

### 5. SL886 - Bot Feature by System Notification
- **Command:** `C:\project\mcp-client\notify_agent_system.bat`
- **Schedule:** Weekly on weekdays (Monday-Friday) at 21:10
- **Purpose:** System-level bot notifications and automated messaging
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Time Limit:** 1 hour
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** July 23, 2025

### 6. SL886 - Bot Feature Notification
- **Command:** `C:\project\mcp-client\notify_agent.bat`
- **Schedule:** Complex multi-trigger schedule:
  - **Weekdays 16:05-23:05:** Every 15 minutes for 7 hours
  - **Weekdays 07:30-09:00:** Every 15 minutes for 1.5 hours  
  - **Weekdays 12:01-12:46:** Every 5 minutes for 45 minutes
- **Purpose:** High-frequency bot notifications during peak trading hours
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Policy:** Ignore new instances if already running
- **Created:** May 27, 2025

### 7. SL886 - ChatGPT Earningscalls
- **Command:** `C:\project\yii2\SL886\yii.bat earningscalls/do`
- **Schedule:** Daily repetition every 3 hours for 24 hours starting at 02:00
- **Purpose:** AI analysis of company earnings calls using ChatGPT
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** March 23, 2024

### 8. SL886 - ChatGPT Report Analysis
- **Commands:**
  - `C:\project\yii2\SL886\exec\process_reports.bat`
  - `C:\project\yii2\SL886\yii.bat hkexnewstext/fixdb`
- **Schedule:** Daily repetition every 15 minutes for 17 hours starting at 07:00
- **Purpose:** Continuous AI-powered analysis of financial reports and HKEX news
- **Working Directory:** `C:\project\yii2\SL886\exec\` and `C:\project\yii2\SL886\`
- **Execution Time Limit:** 1 hour
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** December 20, 2024

### 9. SL886 - FBPost News
- **Command:** `C:\project\yii2\SL886\yii.bat fbpost/news`
- **Schedule:** Daily repetition every 5 minutes for 24 hours
- **Purpose:** Continuous Facebook posting of financial news and market updates
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Policy:** Ignore new instances if already running
- **Created:** October 31, 2023

### 10. SL886 - Grab StockPrice - Day End QUOTE- HK
- **Commands:**
  - `C:\project\yii2\SL886\exec\grabmarketquote_hk_dayend.bat`
  - `C:\project\yii2\SL886\yii.bat hsicategory`
  - `C:\project\yii2\SL886\yii.bat stockai/doaidesc`
  - `C:\project\yii2\SL886\exec\update_concept_metrics.bat`
- **Schedule:** Weekly on weekdays (Monday-Friday) at 16:15 (4:15 PM)
- **Purpose:** End-of-day Hong Kong stock market data collection and AI analysis
- **Working Directory:** `C:\project\yii2\SL886\exec\` and `C:\project\yii2\SL886\`
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** December 21, 2018

### 11. SL886 - Handle Whatsapp Failures
- **Command:** `C:\project\mcp-client\handle_whatsapp_failures.bat`
- **Schedule:** Daily at 23:15 (11:15 PM)
- **Purpose:** Daily WhatsApp failure handling and recovery operations
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Policy:** Ignore new instances if already running
- **Created:** August 28, 2025

### 12. SL886 - Hkexnewstext
- **Command:** `C:\project\yii2\SL886\yii.bat hkexnewstext`
- **Schedule:** Daily repetition every 1 hour for 14 hours starting at 18:00 (6:00 PM to 8:00 AM)
- **Purpose:** Overnight HKEX news text processing and analysis
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** June 18, 2024

### 13. SL886 - Message Notification
- **Commands:**
  - `C:\project\yii2\SL886\exec\process_reports.bat`
  - `C:\project\mcp-client\notify_agent.bat`
  - `C:\project\mcp-client\message_notification.bat`
- **Schedule:** Weekdays (Monday-Friday) at 08:45, 12:30, and 21:30
- **Purpose:** Three-phase daily message notification system for reports and alerts
- **Working Directory:** Various (`SL886\exec\` and `mcp-client\`)
- **Execution Time Limit:** 4 hours
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** August 20, 2025

### 14. SL886 - Stock AI Desc
- **Command:** `C:\project\yii2\SL886\yii.bat stockai/aidesc`
- **Schedule:** Daily repetition every 2 hours for 10 hours starting at 18:30 (6:30 PM to 4:30 AM)
- **Purpose:** AI-generated stock descriptions and analysis during off-market hours
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Policy:** Ignore new instances if already running
- **Created:** January 2, 2025

### 15. SL886 - Stock AI Recalc
- **Command:** `C:\project\yii2\SL886\yii.bat stockai/recalc`
- **Schedule:** Weekly on Tuesday through Saturday at 04:00 (4:00 AM)
- **Purpose:** Weekly stock AI recalculation and model updates (skips Sunday & Monday)
- **Working Directory:** `C:\project\yii2\SL886\`
- **Execution Policy:** Ignore new instances if already running
- **Created:** April 10, 2024

### 16. SL886 - Update Day Trade Analysis
- **Command:** `C:\project\yii2\SL886\exec\update_day_trade_analysis.bat`
- **Schedule:** Complex weekday schedule:
  - **Morning Session:** 09:30-12:00 every 5 minutes (Monday-Friday)
  - **Afternoon Session:** 13:00-16:00 every 5 minutes (Monday-Friday)
- **Purpose:** Real-time day trading analysis during Hong Kong market hours
- **Working Directory:** `C:\project\yii2\SL886\exec\`
- **Execution Time Limit:** 1 hour
- **Execution Policy:** Parallel execution allowed (multiple instances can run)
- **Created:** October 10, 2025 (Most recent task)

### 17. SL886 - Whatsapp Jobs - Today
- **Command:** `C:\project\mcp-client\replyjobs_today.bat`
- **Schedule:** Daily repetition every 3 hours for 24 hours starting at 18:21
- **Purpose:** Continuous WhatsApp job processing and automated responses
- **Working Directory:** `C:\project\mcp-client\`
- **Execution Time Limit:** 1 hour
- **Execution Policy:** Stop existing instances before starting new ones
- **Created:** June 6, 2025

---

## 📈 Activity Timeline Analysis

### Peak Activity Periods

#### **Morning Session (07:00-12:00)**
- **07:00-09:00:** Bot notifications every 15 minutes
- **07:00-24:00:** Report analysis every 15 minutes
- **08:45:** Daily message notification (1 of 3)
- **09:30-12:00:** Day trading analysis every 5 minutes

#### **Lunch & Afternoon (12:00-17:00)**
- **12:01-12:46:** High-frequency bot notifications every 5 minutes
- **12:30:** Daily message notification (2 of 3)
- **13:00-16:00:** Day trading analysis every 5 minutes
- **16:15:** End-of-day stock price collection (weekdays)
- **16:28+:** Agent advertisement every 2 hours

#### **Evening & Night (17:00-04:00)**
- **18:00-08:00:** HKEX news processing every hour
- **18:21+:** WhatsApp jobs every 3 hours
- **18:30-04:30:** Stock AI descriptions every 2 hours
- **19:00:** AI backtesting (weekdays)
- **21:10:** System notifications (weekdays)
- **21:30:** Daily message notification (3 of 3)
- **23:15:** WhatsApp failure handling

#### **Early Morning (04:00-07:00)**
- **04:00:** Weekly stock AI recalculation (Tue-Sat)
- **04:30:** Daily archive operations

### Frequency Distribution

#### **Ultra High-Frequency (≤ 5 minutes)**
1. **FBPost News** - Every 5 minutes (24/7)
2. **Day Trading Analysis** - Every 5 minutes (market hours)
3. **Bot Notifications** - Every 5 minutes (lunch period)

#### **High-Frequency (5-30 minutes)**
1. **Report Analysis** - Every 15 minutes (17 hours/day)
2. **Bot Notifications** - Every 15 minutes (peak hours)

#### **Medium-Frequency (30 minutes - 4 hours)**
1. **HKEX News** - Every hour (overnight)
2. **Stock AI Desc** - Every 2 hours (off-market)
3. **Agent Advertisement** - Every 2 hours (24/7)
4. **Earnings Calls** - Every 3 hours (24/7)
5. **WhatsApp Jobs** - Every 3 hours (24/7)

#### **Low-Frequency (Daily/Weekly)**
1. **AI Backtest** - Daily (weekdays)
2. **Archive** - Daily
3. **WhatsApp Failures** - Daily
4. **Stock AI Recalc** - 5 days/week
5. **Backup Futu** - Weekly

---

## 🛠 Technical Implementation Details

### Script Categories and Locations

#### **Yii2 Framework Commands**
- **Location:** `C:\project\yii2\SL886\yii.bat`
- **Commands:** `archive`, `earningscalls/do`, `fbpost/news`, `hkexnewstext`, `hsicategory`, `stockai/aidesc`, `stockai/recalc`, `stockai/doaidesc`, `hkexnewstext/fixdb`

#### **MCP Client Scripts**
- **Location:** `C:\project\mcp-client\`
- **Scripts:** `sl886_agent_adv.bat`, `unified_trading_skip_ai.bat`, `notify_agent_system.bat`, `notify_agent.bat`, `handle_whatsapp_failures.bat`, `replyjobs_today.bat`, `message_notification.bat`

#### **Custom Batch Files**
- **Location:** `C:\project\yii2\SL886\exec\`
- **Scripts:** `archive_tblstockfutu.bat`, `grabmarketquote_hk_dayend.bat`, `update_concept_metrics.bat`, `process_reports.bat`, `update_day_trade_analysis.bat`

### Execution Policies

| Policy | Count | Usage |
|--------|-------|-------|
| **StopExisting** | 8 tasks | Standard for most operations to prevent overlap |
| **IgnoreNew** | 6 tasks | Long-running or frequent tasks that shouldn't be interrupted |
| **Parallel** | 1 task | Day trading analysis allows multiple instances |

### Time Limits

| Limit | Tasks | Purpose |
|-------|-------|---------|
| **1 hour** | 5 tasks | Standard limit for most operations |
| **2 hours** | 2 tasks | Archive and video processing |
| **4 hours** | 1 task | Message notification system |
| **No limit** | 10 tasks | Continuous or quick operations |

### Security Context

- **System Account (S-1-5-18):** 2 tasks (Archive, Stock AI Desc)
- **User Account:** 16 tasks (Interactive operations, file access)

---

## 📊 Business Logic Analysis

### Market Data Processing
- **Real-time:** Day trading analysis every 5 minutes during market hours
- **End-of-day:** Stock price collection at 16:15 (market close)
- **Overnight:** HKEX news processing every hour
- **AI Analysis:** Stock descriptions and recalculation during off-hours

### Communication Systems
- **WhatsApp:** 24/7 job processing and daily failure handling
- **Facebook:** Continuous news posting every 5 minutes
- **Agent Notifications:** Multi-frequency bot messaging system

### AI Integration
- **Trading:** Daily backtesting and real-time analysis
- **Content:** Earnings call analysis and report processing
- **Descriptions:** AI-generated stock descriptions during off-market hours

### Data Management
- **Backup:** Weekly Futu data backup on Fridays
- **Archive:** Daily cleanup at 04:30 AM
- **Metrics:** Real-time concept metrics updates

---

## 🚨 Critical Dependencies

### Market Hours Alignment
- **Hong Kong Stock Exchange:** 09:30-12:00, 13:00-16:00
- **Day Trading Analysis:** Precisely aligned with market sessions
- **End-of-day Processing:** Starts at 16:15 after market close

### External APIs
- **HKEX Data Feeds:** For real-time market data
- **ChatGPT/AI Services:** For analysis and content generation
- **WhatsApp Business API:** For notifications and customer service
- **Facebook Graph API:** For automated posting

### Infrastructure Requirements
- **High-frequency tasks** require stable execution environment
- **Multiple simultaneous executions** during peak periods
- **Network connectivity** for external API calls
- **Storage capacity** for data archiving and backups

---

## 📝 Maintenance Notes

### Recent Updates (2025)
- **Update Day Trade Analysis** (Oct 10, 2025) - Most recent addition
- **AI Backtest** (Sep 27, 2025) - Updated trading strategies
- **Handle Whatsapp Failures** (Aug 28, 2025) - Enhanced error handling
- **Message Notification** (Aug 20, 2025) - Improved notification system

### Performance Considerations
- **Peak overlap periods** may cause resource contention
- **Market hours** have highest task density
- **Overnight processing** handles data-intensive operations
- **Weekend minimal activity** for system maintenance

### Monitoring Recommendations
1. **High-frequency task health** (5-15 minute intervals)
2. **Market data collection accuracy** during trading hours
3. **AI service availability** for analysis tasks
4. **WhatsApp integration status** for customer communication
5. **Storage utilization** for archive and backup operations

---

**Document End** | SL886 Platform Scheduled Tasks | October 11, 2025