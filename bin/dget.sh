#!/bin/bash
url=$1
password=$2
curl $1 -o /tmp/downloaded.gpg -s
gpg --ignore-mdc-error -q --batch --yes --passphrase $password -o "screenshot.${url##*.}" -d /tmp/downloaded.gpg
