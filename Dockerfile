FROM centos:latest

RUN yum install -y clang wget python3 python27 git cmake make which && \
wget -O /usr/local/bin/bazel https://github.com/bazelbuild/bazelisk/releases/latest/download/bazelisk-linux-amd64 && \
chmod +x /usr/local/bin/bazel

RUN pip3 install ninja && \
ln -s /usr/lib/gcc/x86_64-redhat-linux/8/libstdc++.so /usr/lib64/libstdc++.a && \
ln -s /usr/bin/python2 /usr/bin/python
