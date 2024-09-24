FROM ipfs/kubo:latest

# Initialize IPFS repository
RUN ipfs init

# Set the IPFS_PATH environment variable
ENV IPFS_PATH /data/ipfs

# Configure IPFS to listen on all interfaces
RUN ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001
RUN ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ipfs daemon --agent-version-suffix=docker", "--migrate=true"]