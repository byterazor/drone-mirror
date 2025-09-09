# drone-mirror


## Description

This is a [Drone CI](https://www.drone.io/) plugin to mirror a public repository to your internal gitea/gitlab instance. **At the moment only HTTP/HTTPS URLS are supported.**

### Requirements
    - drone
    - internal repository server
    - your pipeline requires push rights to the repository to which to mirror

### Working

The plugin creates a drone-mirror directory in the current pipelines build environment.
It then clones the FROM repository into a repository called mirror, switches to that 
directory and pushes all to the TO repository. 

### Alert

This is very early work and may and may not work for you yet.

### Settings Variables

- ```FROM```- the URL of the repository to mirror. 
- ```FROM_USER```- the user to authenticate at FROM 
- ```FROM_PASS``` - the password to authenticate at FROM  
- ```TO```- the URL of the repository to mirror to.
- ```TO_USER``` - the user to authenticate at TO 
- ```TO_PASS``` - the password to authenticate at TO  

## Supported Architectures
- amd64
- arm64

## Updates

I am trying to update the image weekly as long as my private Kubernetes cluster is available. So I do not promise anything and do **not** rely 
your business on this image.


## Source Repository

* https://gitea.federationhq.de/Container/drone-mirror

## Project Homepage

* https://rm.byterazor.de/projects/drone-mirror


## Prebuild Images

* https://hub.docker.com/repository/docker/byterazor/drone-mirror

## Authors

* **Dominik Meyer** - *Initial work* 

## License

This project is licensed under the MPLv2 License - see the [LICENSE](LICENSE) file for details.
