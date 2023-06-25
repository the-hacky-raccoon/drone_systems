# Raccoon Drone Documentation

This repository has the design documentation of Raccoon

## Workflow

In each commit, a CI job is configured to build a docker image with the webpage already built.
The docker image is pushed to the docker registry of this repository:

```
https://gitlab.com/the_hacky_raccoon/raccon_drone/documentation/container_registry
```

The name format of the images are the following:

* Images built in branches: `the_hacky_raccoon/raccoon_drone/documentation/amd64/<branch_name>:<commit_hash>`
* Images built in master: `the_hacky_raccoon/raccoon_drone/documentation/amd64:latest`
* Images built in a tag: `the_hacky_raccoon/raccoon_drone/documentation/amd64/tag:<tag>`

You can pull the image and setup `raccoon drone documentation` in any server you want with the following command.
The `docker run` already pulls the image if you do not have it. For example, to setup the sphinx doc of the master:

```
docker login registry.gitlab.com
docker run -it gitlab.com/the_hacky_raccoon/raccoon_drone/documentation/amd64:latest sphinx-serve
```