# Telegram PHP Bot on Render

### Deploy Steps
1. Push to GitHub.
2. On Render, create a new "Web Service".
3. Select this repo and deploy.
4. Add environment variables in the Render Dashboard:
   - `BOT_TOKEN`: your Telegram bot token
5. Set your webhook:
   ```
   https://api.telegram.org/bot<YOUR_BOT_TOKEN>/setWebhook?url=https://<your-app-name>.onrender.com/webhook.php
   ```
