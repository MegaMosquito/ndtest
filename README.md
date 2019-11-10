# ndtest

This is a quick test for the NVIDIA docker runtime on an ARM64v8 machine, like any of the NVIDIA Jetson devices (e.g., Nano, TX1, TX2, Xavier).

This code is based on example code found in [DLology Blog](https://www.dlology.com/blog/how-to-run-keras-model-on-jetson-nano-in-nvidia-docker-container/).

To test, just:
```
make
```

If everything works, you should see output similar to the line below (with a significant count for "fps" -- this example is from an NVIDIA nano, with a GPU based on the Maxwell architetcure):
```
average(sec):0.03,fps:29.53
```
