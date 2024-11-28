account_id=540280401574

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $account_id.dkr.ecr.us-east-1.amazonaws.com

cd juice-shop
docker build -t juice-shop-app .
docker tag juice-shop-app:latest $account_id.dkr.ecr.us-east-1.amazonaws.com/juice-shop:app-latest
docker push $account_id.dkr.ecr.us-east-1.amazonaws.com/juice-shop:app-latest
cd ..

cd database
docker build -t juice-shop-database .
docker tag juice-shop-database:latest $account_id.dkr.ecr.us-east-1.amazonaws.com/juice-shop:database-latest
docker push $account_id.dkr.ecr.us-east-1.amazonaws.com/juice-shop:database-latest
cd ..

git clone https://github.com/coreruleset/modsecurity-crs-docker
cp ./nginx-modsecurity-crs/Dockerfile_modsecurity_custom ./modsecurity-crs-docker/Dockerfile
mkdir -p modsecurity-crs-docker/nginx-modsecurity-crs/etc
cp -r ./nginx-modsecurity-crs/etc/ modsecurity-crs-docker/nginx-modsecurity-crs
cd modsecurity-crs-docker
docker build -t custom-nginx-modsecurity-crs .
docker tag custom-nginx-modsecurity-crs:latest $account_id.dkr.ecr.us-east-1.amazonaws.com/juice-shop:nginx-latest
docker push $account_id.dkr.ecr.us-east-1.amazonaws.com/juice-shop:nginx-latest
cd ..
