# Zadanie dodatkowe lab 4

## Polecenie użyte do budowy obrazu
```
docker build --build-arg VERSION=1 -f Dockerfile -t local/zadaniedod:1 .
```
![image](https://github.com/user-attachments/assets/ac462135-4cac-4e8d-aa76-198ba59814e1)

## Polecenie do uruchomienia kontenera
```
docker run -itd -p 80:80 --name sysw_zadanie_dodatkowe local/zadaniedod:1
```
## Polecenie do uruchomienia serwera
Serwer uruchamia się automatycznie więc nie jest ono potrzebne 

## Potwierdzenie działania i zdrowia kontenera
![image](https://github.com/user-attachments/assets/61e4a962-5165-494a-8d7b-7fbe8892ec69)

## Zrzut ekranu z przeglądarki
![image](https://github.com/user-attachments/assets/27616c09-9e46-4b67-a588-4dd9e255946d)


