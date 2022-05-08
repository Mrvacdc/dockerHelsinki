Command used:

```
>>> docker run --rm -it --name missing ubuntu sh -c 'apt-get update && apt-get install curl -y; echo Input website:; read website; echo Searching...; sleep 1; curl http://$website;'
```

*Observation*: In Windows the command doesn't work as it should if you use double quotes inside the single quotes, or even if you just use double quotes. 
