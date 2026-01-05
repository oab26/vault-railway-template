echo "
  {
    \"storage\": { \"file\": { \"path\": \"${STORAGE_PATH}\" } },
    \"listener\": [{ \"tcp\": { \"address\": \"[::]:8200\", \"tls_disable\": \"true\" } }],
    \"seal\": {
      \"awskms\": {
        \"region\": \"us-east-1\",
        \"kms_key_id\": \"alias/vault-unseal\"
      }
    },
    \"default_lease_ttl\": \"${DEFAULT_LEASE_TTL}\",
    \"max_lease_ttl\": \"${MAX_LEASE_TTL}\",
    \"ui\": ${UI_ENABLED},
    \"disable_mlock\": true
  }
  " > config.json
