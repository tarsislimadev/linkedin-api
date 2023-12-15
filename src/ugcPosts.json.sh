#!/usr/bin/sh

text="${2}"

author="urn:li:person:${1}"

lifecycleState="PUBLISHED"

specificContent=""

specificContent=$( jq -n --arg text "${text}" '{"com.linkedin.ugc.ShareContent": {"shareCommentary": {"text": $text},"shareMediaCategory": "NONE"}}' )

visibility='{"com.linkedin.ugc.MemberNetworkVisibility": "PUBLIC"}'

jq -n --arg author "${author}" --arg lifecycleState "${lifecycleState}" --argjson specificContent "${specificContent}" --argjson visibility "${visibility}" '{"author": $author,"lifecycleState": $lifecycleState,"specificContent": $specificContent,"visibility": $visibility}'
