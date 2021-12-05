#!/usr/bin/env bash

gpg --decrypt --output secret.tar secret.tar.gpg
tar xf secret.tar
