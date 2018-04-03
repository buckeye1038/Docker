FROM centos:7.4.1708

COPY ExampleCpp/bin/ bin/
COPY ExampleCpp/lib/ lib/

COPY ExampleExecutableCpp/bin/example bin/

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:lib/
RUN ldd bin/example

CMD bin/example
