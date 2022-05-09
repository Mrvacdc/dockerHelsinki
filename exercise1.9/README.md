The command used to get logs written to my filesystem was:
```
>>> docker run -v "$(pwd)\material.md:/usr/src/app/text.log" devopsdockeruh/simple-web-service
```

*Observation*: For the logs to be written to our filesystem we must first create the matching file, in this case material.md.
