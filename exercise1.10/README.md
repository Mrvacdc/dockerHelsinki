The command used for this exercise is:

```
>>>  docker run -p 80:8080 devopsdockeruh/simple-web-service server
```
This way we are matching the port 80 from our machine to the port 8080 from the container. This way if we visit http://localhost:80, we'll be able to observe what we are told:

```
{ message: "You connected to the following path: ...
```
