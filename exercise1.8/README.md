The Dockerfile content is the following:

```
FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y dos2unix
COPY startScript.sh .
RUN dos2unix startScript.sh
CMD ./startScript.sh
```

*Observation*: The Dockerfile installs and run dos2unix because in Windows when copying a file to a container it adds "^M" at the end of each line, in this case the script that we are trying to execute when running the container.

This because in DOS/Windows an end-of-line is marked by a carriage return/newline pair, whereas in Unix end-of-lin is marked by a single newline.

To build and tag the image as we are told, we run:

```
>>> docker build . -t curler
```

Finally, we run the container:

```
>>> docker run -it curler
```
