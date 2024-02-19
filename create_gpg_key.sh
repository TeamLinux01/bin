#!/bin/bash
#creates a new gpg keypair

gpg --default-new-key-algo "ed25519/cert,sign+cv25519/encr" --generate-key
