# Zadanie 1 z częścią dodatkową

## Polecenie do zbudowania kontenera i wrzucenia do repozytorium na docker.io
'''
docker buildx build --no-cache --ssh git_ssh=/home/dron/.ssh/id_ed25519 -f Dockerfile -t docker.io/dronmk/zadanie1:v1 --platform linux/amd64,linux/arm64 --push . 
'''
## 
