# almalinux-apache2-php8

### docker コマンド
1. docker image build -t docomo_pra .
2. docker run --name docomo -d -p 30:80  docomo_pra
3. docker exec -it docomo bash #コンテナに入る
4. docker rm docomo
5. docker rmi docomo_pra

(2022/09/01時点ではdocker-composer.ymlは使用しないため手直しはしてない)

(2022/09/02 docker-compose.yml修正)
### docker compose コマンド
1. docker compose build (--no-cache) #キャッシュを使用しない場合は()を削除
2. docker compose up -d
3. docker compose exec -it docomo_pra bash
