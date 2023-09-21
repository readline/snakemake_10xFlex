FROM centos:7

LABEL maintainer="Kai Yu (kai.yu@nih.gov)"

ARG CELLRANGER_VERSION
ARG DOWNLOAD_URL
ENV PATH /opt/cellranger-${CELLRANGER_VERSION}:$PATH

RUN yum group install -y "Development Tools" \
    && yum install -y which

# cell ranger binaries
RUN curl --insecure -o cellranger-${CELLRANGER_VERSION}.tar.gz ${DOWNLOAD_URL} \
    && tar xzf cellranger-${CELLRANGER_VERSION}.tar.gz \
    && rm -rf cellranger-${CELLRANGER_VERSION}.tar.gz \
    && mv cellranger-${CELLRANGER_VERSION} /opt/

WORKDIR /opt

ENTRYPOINT [ "cellranger" ]
