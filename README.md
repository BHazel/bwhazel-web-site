# BWHazel Web Site

This repository contains the source code for my personal web site.

## ARCHIVE NOTICE _(12/04/2025)_

This site has been replaced with a new version written in ASP.NET Blazor WebAssembly.  The source code can be found [here](https://github.com/bhazel/bwhazel-portfolio-web-site.git).  As such, this repository has been archived.

## Technologies

* Jekyll
* MaterializeCSS

## Getting Started

It is recommended to use Docker for the development environment, for which the image can be built using the `Dockerfile` in the root of the repository.

```
docker image build -t x-bwhazel --target dev-env .
docker container run -it --rm -p 4000:4000 -v /path/to/repository:/src x-bwhazel bash
```

Leaving out the `--target` flag will set up the development environment, build the site and publish it as an NGINX-based Docker image.

Once the container is running, the source code can be accessed in the `/src` directory.

A Makefile wraps the Jekyll server and build functionality.

Command | Description
--- | ---
`make start` | Start the Jekyll server.
`make build` | Build the site into a `dist` directory.
`make clean` | Delete a built site.