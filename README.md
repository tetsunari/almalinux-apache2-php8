# almalinux-apache2-php8

### docker コマンド
1. docker image build -t docomo_pra .
2. docker run --name docomo -d -p 30:80  docomo_pra
3. docker exec -it docomo bash //コンテナに入る
4. docker rm docomo
5. docker rmi docomo_pra

(2022/09/01時点ではdocker-composer.ymlは使用しないため手直しはしてない)
