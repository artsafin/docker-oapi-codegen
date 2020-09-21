# docker-oapi-codegen

Docker container for [deepmap/oapi-codegen](https://github.com/deepmap/oapi-codegen).

## Basic usage

`/src` inside the container is a default working directory.

Assume current directory contains `openapi.yml`:
```
$ ls -l $PWD
-rw-r--r-- 1 user group 173135 Sep 31 22:47 openapi.yaml
```

Generate go representation of the specification (types, client, server, spec by default):
```
docker run --rm \
	-v "${PWD}:/src" \
	artsafin/docker-oapi-codegen openapi.yaml -o api.gen.go
```

Result:
```
$ ls -l $PWD
-rw-r--r-- 1 user group 173135 Sep 31 22:47 openapi.yaml
-rw-r--r-- 1 user group   1335 Sep 31 22:48 api.gen.go
```

See original [Usage](https://github.com/deepmap/oapi-codegen#using-oapi-codegen) on syntax.
