# JFrog Pipelines ContainerEnv example

## Building Locally

**Image**

```shell
make
```

The image can be pushed with

```shell
make push
```

Which implies `make image`.

## Building in JFrog Pipelines

```shell
git push origin master
```

Will trigger a build, using the same scripts that run locally.

# FAQ

Q: Can I use `podman` instead of `buildah`?

A: No, `podman` errors in the containerised build environment, but `buildah` 
works:

```shell
error running container: error creating container for [/bin/sh -c apt update     && apt install -y curl bzip2]: time="2021-02-20T01:52:52Z" level=error msg="systemd cgroup flag passed, but systemd support for managing cgroups is not available"
: exit status 1
time="2021-02-20T01:52:53Z" level=error msg="unable to write build event: \"write unixgram @00075->/run/systemd/journal/socket: sendmsg: no such file or directory\""
```