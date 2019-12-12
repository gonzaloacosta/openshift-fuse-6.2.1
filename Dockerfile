FROM jboss/base-jdk:8

ARG FUSE_ZIP
ARG FUSE_FOLDER
ARG FUSE_REPO_HTTP

#ENV FUSE_ZIP jboss-fuse-full-6.2.1.redhat-084.zip
#ENV FUSE_FOLDER jboss-fuse-full-6.2.1.redhat-084
#ENV FUSE_REPO_HTTP "http://10.36.255.6:8080"

    curl -O $FUSE_REPO_HTTP/$FUSE_ZIP && \
    unzip $FUSE_ZIP -d /opt/jboss/ && \
    ln -s /opt/jboss/$FUSE_FOLDER fuse && \
    rm -rf $FUSE_ZIP && \
    rm -rf /opt/jboss/fuse/quickstarts && \
    rm -rf /opt/jboss/fuse/extras

EXPOSE 8181 8101 1099 44444 61616

COPY etc/users.properties /opt/jboss/fuse/etc

CMD /opt/jboss/fuse/bin/fuse server
