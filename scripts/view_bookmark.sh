#!/bin/bash

# Bookmark Manager - View Bookmarks

BOOKMARK_FILE="../bookmarks/bookmarks.txt"

if [ ! -f $BOOKMARK_FILE ]; then
  echo "No bookmarks found!"
  exit 1
fi

echo "Bookmarks:"
cat $BOOKMARK_FILE
