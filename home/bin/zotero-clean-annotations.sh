#!/bin/bash

cat $1 | sed 's/"\ (.*//' | sed 's/^.//'
