# docker-ros-webviz

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
