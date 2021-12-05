#!/usr/bin/env bash

EMAIL_ADDRESS=someone@example.net
DIRNAME=somedir

tar cf ${DIRNAME}.tar ${DIRNAME}
gpg --encrypt --recipient ${EMAIL_ADDRESS} --output ${DIRNAME}.tar.gpg ${DIRNAME}.tar
