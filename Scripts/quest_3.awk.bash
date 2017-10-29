#!/bin/bash

sudo awk -F ':' '$2 ~ "/$" {print $1";"$2}' /etc/shadow > passwd.csv
