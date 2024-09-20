# ใช้ Node.js base image
FROM node:latest

# สร้าง directory สำหรับแอปใน container
WORKDIR /usr/src/app

# คัดลอก package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอก source code ทั้งหมด
COPY . .

# กำหนดพอร์ตที่ container จะใช้
EXPOSE 3000

# เริ่มแอป Express
CMD ["node", "index.js"]

