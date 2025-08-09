#!/bin/bash

# Bookmark Manager - Search Bookmarks

BOOKMARK_FILE="../bookmarks/bookmarks.txt"

if [ $# -lt 1 ]; then
  echo "Usage: $0 <Keyword>"
  exit 1
fi

KEYWORD=$1

grep -i "$KEYWORD" $BOOKMARK_FILE

if [ $? -ne 0 ]; then
  echo "No bookmarks found for keyword: $KEYWORD"
fi
