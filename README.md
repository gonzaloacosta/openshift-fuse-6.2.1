## Docker build example

    docker build --build-arg FUSE_ZIP=jboss-fuse-full-6.2.1.redhat-084.zip --build-arg FUSE_FOLDER=jboss-fuse-full-6.2.1.redhat-084 --build-arg FUSE_REPO_HTTP=http://10.36.255.6:8080 -t=redhat/fuse:6.2.1 .

## Docker run example

    # Interactive mode
    docker run -it redhat/fuse:6.2.1 /bin/bash

    # Background mode (with port binding of HawtIO and logs in an external volume)
    docker run -d --name fuse -p 8181:8181 -v /path/to/log:/opt/jboss/fuse/data/log redhat/fuse:6.2.1
