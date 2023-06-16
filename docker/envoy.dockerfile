FROM envoyproxy/envoy:v1.24-latest

COPY ./envoy/config.yaml /etc/envoy.yaml
RUN chmod go+r /etc/envoy.yaml
CMD ["/usr/local/bin/envoy", "-c", "/etc/envoy.yaml"]