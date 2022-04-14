#!/bin/bash

clear

TOKEN_SYMBOL="CMN"
TOKEN_NAME="Common Collective"
TOTAL_SUPPLY="100000000000000"
source neardev/dev-account.env


near call "$CONTRACT_NAME" new_default_meta  '{
  "owner_id": "'"$CONTRACT_NAME"'",
  "total_supply": "'"$TOTAL_SUPPLY"'",
  "name": "'"$TOKEN_NAME"'",
  "symbol": "'"$TOKEN_SYMBOL"'"
}' --accountId $CONTRACT_NAME
