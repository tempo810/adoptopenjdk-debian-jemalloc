FROM adoptopenjdk/openjdk15:debianslim-jre AS builder
RUN apt-get update && \
    apt-get install libjemalloc2=5.1.0
FROM adoptopenjdk/openjdk15:debianslim-jre
COPY --from=builder /usr/lib/x86_64-linux-gnu/libjemalloc.so.2 /usr/lib/x86_64-linux-gnu/
ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.2
