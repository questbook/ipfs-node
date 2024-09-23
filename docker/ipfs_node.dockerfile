FROM ipfs/kubo:latest

RUN ipfs init

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ipfs daemon --agent-version-suffix=docker --migrate=true"]