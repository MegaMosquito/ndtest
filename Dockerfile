FROM nvcr.io/nvidia/l4t-base:r32.2
WORKDIR /
RUN apt update && apt install -y --fix-missing make g++
RUN apt update && apt install -y --fix-missing python3-pip libhdf5-serial-dev hdf5-tools
RUN apt update && apt install -y python3-h5py
RUN pip3 install --pre --no-cache-dir --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu
RUN pip3 install -U numpy pillow
COPY ndtest.py /
CMD python3 ndtest.py 2>/dev/null | grep '^average(sec):'
