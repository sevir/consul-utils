#!/bin/bash

./consul-template \
    -config config.hcl \
    -template "./template.tpl:./output.txt"