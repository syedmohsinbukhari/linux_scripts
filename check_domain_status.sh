#!/bin/bash

whois $1 | grep "Domain Status" | head -1
