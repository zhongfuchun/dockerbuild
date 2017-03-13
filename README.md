# DockerBuilder

Docker build script for DMP project.

For java project, using ./javaDockerBuild service tag


For static project, using ./staticDockerBuild service tag
Static resource will be copied from build folder to /public/service folder, and
a new service with static tag will be pushed to consul.

``` Used: reg.zintow.com```
# dockerbuild
