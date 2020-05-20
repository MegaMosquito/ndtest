FROM nvcr.io/nvidia/l4t-base:r32.2
RUN apt-get update \
  && apt-get install -y --fix-missing --no-install-recommends \
  make \
  g++ \
  python3 \
  python3-dev \
  python3-setuptools \
  python3-pip \
  python3-h5py \
  libhdf5-serial-dev \
  hdf5-tools \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /
RUN pip3 install -U Cython numpy pillow
RUN pip3 install --pre --no-cache-dir --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu
COPY ndtest.py /
CMD python3 ndtest.py 2>/dev/null | grep '^average(sec):'

