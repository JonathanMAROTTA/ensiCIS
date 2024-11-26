aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 403552681659.dkr.ecr.us-east-1.amazonaws.com

cd juice-shop
docker build -t juice-shop-app .
docker tag juice-shop-app:latest 403552681659.dkr.ecr.us-east-1.amazonaws.com/juice-shop:app-latest
docker push 403552681659.dkr.ecr.us-east-1.amazonaws.com/juice-shop:app-latest
cd ..

cd database
docker build -t juice-shop-database .
docker tag juice-shop-database:latest 403552681659.dkr.ecr.us-east-1.amazonaws.com/juice-shop:database-latest
docker push 403552681659.dkr.ecr.us-east-1.amazonaws.com/juice-shop:database-latest
cd ..
