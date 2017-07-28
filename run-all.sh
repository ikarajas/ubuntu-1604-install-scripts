#!/bin/bash

cd "$(dirname "$0")"

for file in install/*.sh; do sh $file ; done

