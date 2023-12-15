#!/usr/bin/sh

path="${1}"

query="${2}"

json="${3-"{}"}"

curl -sSL -X POST --data "${json}" "https://api.linkedin.com/v2/${path}?${query}"
