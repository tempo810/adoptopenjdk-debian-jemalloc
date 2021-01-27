FROM adoptopenjdk/openjdk15:debianslim-jre
RUN apt-get update && \
    apt-get install -y libjemalloc2=5.1.0-3 && \
    rm -rf /var/lib/apt/lists/*
ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.2
