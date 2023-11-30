#Perintah untuk membuat docker image dengan nama image order-service dan memiliki tag latest, dari dockerfile yang sudah dibuat
docker build -t order-service:latest .

#Perintah untuk memberikan tag ulang pada docker image yang ingin diunggah ke docker hub
docker tag order-service:latest hubrizqi/order-service:latest

#Perintah login ke docker hub
docker login

#Perintah untuk mengunggah docker image ke docker hub
docker push hubrizqi/order-service:latest 

#Perintah membuat image menurut format github packages
docker build -t docker.pkg.github.com/rizqiseptianto/ecommerce/order-service:latest .

#Perintah login ke github packages
docker login docker.pkg.github.com -u rizqiseptianto -p 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

#Perintah untuk mengunggah docker image ke github packages
docker push docker.pkg.github.com/rizqiseptianto/ecommerce/order-service:latest
