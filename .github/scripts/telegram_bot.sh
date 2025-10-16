#!/bin/bash

FILE_PATH="$1"
MESSAGE="$2"

# Jika tidak ada pesan custom, buat pesan default
if [ -z "$MESSAGE" ]; then
    MESSAGE="📦 *File Build Kernel Ready*"
fi

# Upload file ke Telegram
curl -F document=@"$FILE_PATH" \
     -F caption="$MESSAGE" \
     -F parse_mode="Markdown" \
     "https://api.telegram.org/bot$BOT_TOKEN/sendDocument?chat_id=$CHAT_ID"
