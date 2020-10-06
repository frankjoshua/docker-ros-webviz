# ROS master in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros-webviz)](https://hub.docker.com/r/frankjoshua/ros-webviz) [![Build Status](https://travis-ci.org/frankjoshua/docker-ros-webviz.svg?branch=master)](https://travis-ci.org/frankjoshua/docker-ros-webviz)

## Building

```
docker build . -t frankjoshua/ros-webwiz
```

## Running

```
docker run -p 8080:80 frankjoshua/ros-webviz
```

## Updating

Follow directions at https://github.com/cruise-automation/webviz to build a static app. Then copy the static build files to \_\_static_webviz\_\_ and then build the Dockerfile. This is because Webviz will not build driectly on arm64 devices.

## Testing

Travis CI expects the DOCKER_USERNAME and DOCKER_PASSWORD variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
