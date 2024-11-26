# Zadanie 1 z częścią dodatkową
Pierwotnie użyłem obrzu bazowego scratch, jednak ze względu na budowanie obrazu na wiele architektur, wybrałem obraz alpine. W celu przetestowania działania rozszerzonego frontendu ustawiłem widoczność repozytorium na prywatne.

## Polecenie do zbudowania kontenera i wrzucenia do repozytorium na docker.io
Użyta opcja --no-cache gwarantuje, że zostaną pobrane najnowsze paczki oraz pliki źródłowe z repozytorium na githubie. 
```
dockebuildx build --ssh git_ssh=SCIEZKA_DO_KLUCZA --no-cache -f Dockerfile -t docker.io/dronmk/zadanie1:v6 --platform linux/amd64,linux/arm64 --push .
```
## Polecenie do uruchomienia kontenera
```
docker run -it -p 80:5000 --name zadanie1_kontener docker.io/dronmk/zadanie1:v6
```
## Screenshot z przeglądarki
![image](https://github.com/user-attachments/assets/fd44b8d7-106b-4a0b-ad92-c80e3039e9fb)

## Polecenie do wyświetlenia logów
```
docker exec zadanie1_kontener cat logs.txt
```

## Polecenie do sprawdzenia ilości warstw
```
docker history docker.io/dronmk/zadanie1:v6
```
