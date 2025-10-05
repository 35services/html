#!/bin/bash
# Script to download the actual screenshot from the GitHub issue
# Run this script to replace the placeholder with the actual screenshot

IMAGE_URL="https://github.com/user-attachments/assets/7c153a97-73aa-45fd-bf70-6786db7aed80"
OUTPUT_FILE="dialog_with_iframe_0.1.png"

echo "Downloading screenshot from GitHub..."
curl -L "$IMAGE_URL" -o "$OUTPUT_FILE"

if [ $? -eq 0 ]; then
    echo "✅ Screenshot downloaded successfully to $OUTPUT_FILE"
    file "$OUTPUT_FILE"
else
    echo "❌ Failed to download screenshot"
    echo "Please download manually from: $IMAGE_URL"
    exit 1
fi
