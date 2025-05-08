FROM debian:bullseye

# Install dependencies
RUN apt-get update && apt-get install -y  \
    build-essential \
    git \
    qemu-system-x86 \
    python3 \
    curl \
    make \
    gcc \
    gdb \
    nasm \
    libgcc-9-dev \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /xv6

RUN git clone https://github.com/mit-pdos/xv6-public.git


WORKDIR /xv6/xv6-public


CMD ["/bin/bash"]


