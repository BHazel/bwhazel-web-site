# BWHazel Web Site

This repository contains the source code for my personal web site.

## Technologies

* Jekyll
* MaterializeCSS

## Getting Started

It is recommended to use Docker for the development environment, for which the image can be built using the `dev-env.Dockerfile` in the root of the repository.

```
docker image build -t x-bwhazel -f dev-env.Dockerfile .
docker container run -it --rm -p 4000:4000 -v /path/to/repository:/src x-bwhazel bash
```

Once the container is running, the source code can be accessed in the `/src` directory.

A Makefile wraps the Jekyll server and build functionality.

Command | Description
--- | ---
`make start` | Start the Jekyll server.
`make build` | Build the site into a `dist` directory.
`make clean` | Delete a built site.