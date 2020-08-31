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

Follow directions at https://github.com/cruise-automation/webviz to build a static app. Then copy the static build files to **static_webviz** and then build the Dockerfile.
