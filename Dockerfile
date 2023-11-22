#Dockerfile menggunakan base image yaitu node.js dengan versi 14 dan tag alpine
FROM node:14.21.2-alpine

#Working directory di dalam container sebagai /app
WORKDIR /app

#Menyalin semua berkas dari wroking directory saat ini ke dalam direktori /app di container
COPY . /app

#Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#Mendokumentasikan bahwa aplikasi di container berjalan pada port 8080
EXPOSE 8080

#Saat container dijalankan akan menjalankan script start pada aplikasi node.js dengan menggunakan npm
CMD ["npm", "start"]
