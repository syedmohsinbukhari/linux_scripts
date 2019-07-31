#!/bin/sh

find_public_ip() {
  public_ip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
  echo "WAN/Public IP address: ${public_ip}"
}

find_public_ip
