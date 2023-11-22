#Perintah untuk membuat docker image dengan nama image item-app dan memiliki tag v1, dari dockerfile yang sudah dibuat
docker build -t item-app:v1 .

#Perintah untuk melihat daftar image yang ada di lokal
docker images

#Perintah untuk memberikan tag ulang pada docker image yang ingin diunggah ke docker hub
docker tag item-app:v1 hubrizqi/item-app:v1

#Perintah untuk login ke docker hub
docker login

#Perintah untuk mengunggah docker image ke docker hub
docker push hubrizqi/item-app:v1
