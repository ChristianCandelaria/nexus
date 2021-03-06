FROM ubi8/ubi
MAINTAINER Christian Candelaria

ENV NEXUS_VERSION=3.30.0-01 \
    NEXUS_HOME=/opt/nexus

RUN yum install --nodocs java-1.8.0-openjdk-devel.x86_64 -y && \ 
    yum clean all -y && \
    groupadd -g 1001 nexus && \
    useradd -g 1001 -m -r -d $NEXUS_HOME -u 1001 -s /sbin/nologin nexus

ADD nexus.tar.gz $NEXUS_HOME/
ADD install-nexus.sh $NEXUS_HOME/

RUN ln -s ${NEXUS_HOME}/nexus-${NEXUS_VERSION} ${NEXUS_HOME}/nexus3  && \
    chown nexus:nexus -R $NEXUS_HOME && \
    chmod 755 -R $NEXUS_HOME

EXPOSE 8081

USER nexus

WORKDIR ${NEXUS_HOME}

VOLUME ["/opt/nexus/sonatype-work"]

CMD ["sh", "install-nexus.sh"]
