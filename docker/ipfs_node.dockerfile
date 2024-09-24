FROM ipfs/kubo:latest

# Initialize IPFS repository
RUN ipfs init

# Set the IPFS_PATH environment variable
ENV IPFS_PATH /data/ipfs
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ipfs daemon --agent-version-suffix=docker", "--migrate=true"]