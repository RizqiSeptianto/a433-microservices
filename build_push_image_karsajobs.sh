#Perintah untuk membuat docker image dengan nama image karsajobs dengan tag latest
docker build -t docker.pkg.github.com/rizqiseptianto/karsajobs/karsajobs:latest .

#Perintah untuk login ke github packages
docker login docker.pkg.github.com -u rizqiseptianto -p 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

#Perintah untuk mengunggah docker image ke github packages
docker push docker.pkg.github.com/rizqiseptianto/karsajobs/karsajobs:latest