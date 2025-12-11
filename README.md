# n8n Telegram LinkedIn Lead Scraper

A Telegram bot that scrapes LinkedIn profiles for CEOs in the automotive industry using n8n automation.

## Features

- 🤖 Telegram bot interface
- 🔍 Google Custom Search API integration
- 📊 CSV export of leads
- 🔄 Automatic pagination
- 📈 Progress updates
- 🎯 Random lead selection for variety

## Deployment

### Railway (Recommended)

1. Fork this repository
2. Sign up at [Railway](https://railway.app)
3. Create new project → Deploy from GitHub
4. Select this repository
5. Add environment variables (see below)
6. Generate domain
7. Import workflow and add credentials

### Environment Variables

```
N8N_PORT=8080
N8N_PROTOCOL=https
N8N_HOST=0.0.0.0
GENERIC_TIMEZONE=America/New_York
N8N_METRICS=true
DB_TYPE=sqlite
DB_SQLITE_VACUUM_ON_STARTUP=true
N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
N8N_VERSION_NOTIFICATIONS_ENABLED=false
N8N_BASIC_AUTH_ACTIVE=false
```

## Setup

1. Deploy to Railway
2. Open your Railway URL
3. Import `workflow.json`
4. Add Telegram bot credentials
5. Add Google Custom Search API credentials
6. Activate workflow
7. Update Telegram webhook

## Usage

1. Start a chat with your Telegram bot
2. Send `/start`
3. Select number of leads (10, 20, 30, 50, or 100)
4. Wait for the bot to generate leads
5. Receive CSV file with LinkedIn profiles

## Requirements

- Telegram Bot Token
- Google Custom Search API Key
- Google Custom Search Engine ID

## Tech Stack

- n8n (workflow automation)
- Docker
- SQLite
- Telegram Bot API
- Google Custom Search API

## License

MIT
