# Use an official Node.js runtime as a parent image
FROM node:16
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4040

# Define environment variables
ENV PORT=4040
ENV MONGODB_URI="mongodb+srv://azkamalik0011:5X4ewU5DAGofKmQw@cluster0.7yhcjky.mongodb.net/new?retryWrites=true&w=majority"

CMD ["node" , "index.js"]
