#!/usr/bin/env bash

# requires curl & jq

# No parameters are needed with this adaptation as we simply
# fetch the old commit from the properties file

(
set -e
PS1="$"

oldCommit=$(cat gradle.properties | grep previousCommit | sed 's/previousCommit = //')
purpur=$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/PurpurMC/Purpur/compare/$oldCommit...HEAD | jq -r '.commits[] | "PurpurMC/Purpur@\(.sha[:7]) \(.commit.message | split("\r\n")[0] | split("\n")[0])"')

updated=""
logsuffix=""
if [ ! -z "$purpur" ]; then
    logsuffix="$logsuffix\n\nPurpur Changes:\n$purpur"
    updated="Purpur"
fi
disclaimer="Upstream has released updates that appear to apply and compile correctly"

log="${UP_LOG_PREFIX}Updated Upstream ($updated)\n\n${disclaimer}${logsuffix}"

echo -e "$log" | git commit -F -

) || exit 1
