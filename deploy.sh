#!/bin/bash


near dev-deploy  --wasmFile res/cmn_token.wasm --helperUrl https://near-contract-helper.onrender.com
source neardev/dev-account.env