#!/usr/bin/sh

# inputs

. datetime.sh

path="ugcPosts"

author="${1}"

text="${2}"

# runners

data=$( . ./src/ugcPosts.json.sh "${author}" "${text}" )

resp=$( . post.sh "${path}" "a=a" "${data}" )

# outputs

. create.sh "${path}" "${datetime}" "resp" "${resp}"
