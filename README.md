Para criar a imagem
```sh
docker build -t mel/app-node:1.3 .
```

Para executar a imagem Docker:
```sh
docker run -d -p 8080:3000 mel/app-node:1.3
```

Acessar:
http://localhost:8080/