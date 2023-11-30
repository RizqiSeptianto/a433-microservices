#Mendefinisikan image yang digunakan yaitu node dengan versi 14
FROM node:14.21.2-alpine as builder

#Working directory di dalam container sebagai /app
WORKDIR /app

#Menyalin berkas json ke dalam direktori di container
COPY package*.json ./

#Menginstal dependencies untuk production
RUN npm install

#Menyalin semua berkas ke working directory
COPY . .

#Mendokumentasikan bahwa aplikasi di container berjalan pada port 3001
EXPOSE 3001

#Saat container dijalankan akan menjalankan script run pada aplikasi node.js dengan menggunakan npm
CMD [ "npm", "run", "serve" ]