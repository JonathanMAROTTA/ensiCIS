FROM node:20-buster

WORKDIR /
RUN git clone https://github.com/juice-shop/juice-shop.git

COPY modified_code /juice-shop/

WORKDIR /juice-shop

# Build juice shop
RUN npm install

RUN mkdir -p /etc/ssl/certs
COPY root.crt /etc/ssl/certs/root.crt

CMD ["npm", "start"]
#CMD ["tail", "-f", "/dev/null"]

EXPOSE 3000
