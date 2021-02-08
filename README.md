# container-golang-basic

# Criar imagem
docker image build -t go-app:1.0 .

# Rodar imagem e abrir o browser em localhost:10000
docker  run -d  -p 10000:10000 go-app:1.0

# Ver container e Parar container

docker container stop {{id do container}}
