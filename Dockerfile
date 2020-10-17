FROM nginx
COPY __static_webviz__ /usr/share/nginx/html

RUN apt-get update && apt-get install -y \
  curl \
  && rm -rf /var/lib/apt/lists/*

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl --fail \\
  http://localhost:80 || exit 1