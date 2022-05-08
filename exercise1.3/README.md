First Command

```
>>> docker run -d -it devopsdockeruh/simple-web-service:ubuntu
```

Second Command
```
>>> docker ps
CONTAINER ID   IMAGE                                      COMMAND                 CREATED         STATUS         PORTS     NAMES
bc9058a70532   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   9 seconds ago   Up 8 seconds             priceless_chatterjee
```

Third Command
```
>>> docker exec -it priceless_chatterjee bash
```

Once inside the contaner, I run:
```
tails -f ./text.log
```

And I found that the secret message is:

```
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
