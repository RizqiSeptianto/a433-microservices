#Perintah untuk membuat docker image dengan nama image shipping-service dan memiliki tag latest, dari dockerfile yang sudah dibuat
docker build -t shipping-service:latest .

#Perintah untuk memberikan tag ulang pada docker image yang ingin diunggah ke docker hub
docker tag shipping-service:latest hubrizqi/shipping-service:latest

#Perintah login ke docker hub
docker login

#Perintah untuk mengunggah docker image ke docker hub
docker push hubrizqi/shipping-service:latest 

#Perintah membuat image menurut format github packages
docker build -t docker.pkg.github.com/rizqiseptianto/ecommerce/shipping-service:latest .

#Perintah login ke github packages
docker login docker.pkg.github.com -u rizqiseptianto -p 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

#Perintah untuk mengunggah docker image ke github packages
docker push docker.pkg.github.com/rizqiseptianto/ecommerce/shipping-service:latest