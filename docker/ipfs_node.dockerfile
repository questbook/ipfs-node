FROM ipfs/kubo:latest

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ipfs daemon --agent-version-suffix=docker"]