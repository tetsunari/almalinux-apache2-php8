# almalinux-apache2-php8

### docker コマンド
1. docker image build -t docomo_pra .
2. docker run --name docomo -d -p 3000:80  docomo_pra /bin/bash
3. docker exec -it コンテナID bash //コンテナに入る
4. docker rm コンテナID
5. docker images
6. docker rmi イメージID

(2022/09/01時点ではdocker-composer.ymlは使用しないため手直しはしてない)
