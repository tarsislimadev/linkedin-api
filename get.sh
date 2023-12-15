#!/usr/bin/sh

path="${1}"

query="${2}"

curl -sSL -X GET "https://api.linkedin.com/v2/${path}?${query}"
