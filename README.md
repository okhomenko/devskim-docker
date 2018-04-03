# Microsoft DevSkim Docker

Docker image for Microsoft DevSkim

Use:
Map folder with your code to `/usrapp`
```
docker run --rm -v $PWD:/usrapp okhomenko/devskim
```

or just use it as plain cli:
```
docker run -it --rm okhomenko/devskim devskim --help
```