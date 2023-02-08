#!/bin/sh

# "s" option stands for 'silent' so it won't print the download progress
# "L" option can be added to follow all redirections, here we remove it to only keep one redrection
# "I" to download only the http header
curl -sI $1 | grep -i Location | cut -d ' ' -f 2