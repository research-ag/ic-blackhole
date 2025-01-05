ARG IMAGE
FROM $IMAGE

WORKDIR /project

COPY src /project/src/
COPY build.sh /project

CMD ["/bin/bash"]
