docker build -t debian . ;criar imagem docker
docker run -d --name dns debian ; iniciar imagem
docker exec --it dns bash  ;exercutar container
cd /etc/bind/