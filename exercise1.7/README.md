The Dockerfile for this exercise just contains two commands:

```
FROM devopsdockeruh/simple-web-service:alpine
CMD server
```

After building the image:

```
>>> docker build . -t webserver
```

We just run the container with:

```
>>> docker run web-server
```
