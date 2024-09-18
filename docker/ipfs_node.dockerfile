FROM ipfs/kubo:master-2023-06-15-9298e31

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ipfs daemon --agent-version-suffix=docker"]