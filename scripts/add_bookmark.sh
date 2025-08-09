#!/bin/bash

# Bookmark Manager - Add Bookmark

BOOKMARK_FILE="../bookmarks/bookmarks.txt"
LOG_FILE="../logs/bookmark_manager.log"

if [ $# -lt 2 ]; then
  echo "Usage: $0 <URL> <Title>"
  exit 1
fi

URL=$1
TITLE=$2

# Save the bookmark
echo "Title: $TITLE, URL: $URL" >> $BOOKMARK_FILE

# Log the action
echo "$(date) - Added bookmark: $TITLE, $URL" >> $LOG_FILE

echo "Bookmark added successfully!"
