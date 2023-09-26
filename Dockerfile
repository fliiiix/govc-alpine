FROM alpine:latest
MAINTAINER l33tname <sirl33tname@gmail.com>

ENV GOVC_VERSION 0.31.0
ENV GOVC_ARCH Linux_x86_64

USER ${user}

# Install GOVC
RUN wget https://github.com/vmware/govmomi/releases/download/v${GOVC_VERSION}/govc_${GOVC_ARCH}.tar.gz && \
        tar xzvf govc_${GOVC_ARCH}.tar.gz -C /usr/bin govc && \
        rm -rf govc_${GOVC_ARCH}.tar.gz

ENTRYPOINT ["/usr/bin/govc"]
