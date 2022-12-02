# govc-alpine

You can find [this](https://hub.docker.com/repository/docker/l33tname/govc-alpine) on hub.docker.com.

This packages govc in a docker container with alpine linux.
Requried because there is no official image.
See issue here: <https://github.com/vmware/govmomi/issues/2988>

# Run

You can run `govc`:

```
sudo docker run --rm -it l33tname/govc-alpine --help
```
