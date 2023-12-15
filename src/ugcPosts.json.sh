#!/usr/bin/sh

jq -n --arg author "urn:li:person:${1}" --arg text "${2}" '{"author": $author,"lifecycleState": "PUBLISHED","specificContent": {"com.linkedin.ugc.ShareContent": {"shareCommentary": {"text": $text},"shareMediaCategory": "NONE"}},"visibility": {"com.linkedin.ugc.MemberNetworkVisibility": "PUBLIC"}}'
