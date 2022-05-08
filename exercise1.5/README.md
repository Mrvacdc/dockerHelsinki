Comparing both images:

```
>>> docker image ls
REPOSITORY                          TAG       IMAGE ID       CREATED         SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   14 months ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   14 months ago   15.7MB
```

After this, I started the container with the following command:

```
>>> docker run --rm -it devopsdockeruh/simple-web-service:alpine
```

Then to verify that it was running:

```
>>> docker ps
CONTAINER ID   IMAGE                                      COMMAND                 CREATED          STATUS          PORTS     NAMES
5a90a13248dd   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   47 seconds ago   Up 47 seconds             great_davinci
```

To get into the container I've used the command:
```
>>> docker exec -it great_davinci sh
```

Once inside the container, I've verified that the secret message was the same by running:
```
tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

