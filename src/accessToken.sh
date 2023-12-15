#!/usr/bin/sh

# inputs

. datetime.sh

path="accessToken"

query="grant_type=client_credentials&client_id=${CLIENT_ID}&client_secret=${CLIENT_SECRET}"

# runners

resp=$( . get.sh "${path}" "${query}" )

# outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
