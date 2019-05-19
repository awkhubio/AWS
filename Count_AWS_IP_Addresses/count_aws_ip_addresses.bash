#!/bin/bash

curl -s https://ip-ranges.amazonaws.com/ip-ranges.json > amazonaws_ip_ranges.json.cache
awk -f get_amazon_aws_ip_address_count.awkhubio.awk amazonaws_ip_ranges.json.cache
