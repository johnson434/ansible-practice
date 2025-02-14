# 사용법
- vagrant 쓰기 귀찮아서 docker container로 노드 시뮬레이션 대체

## 00. 이미지 생성
``` bash
./00.create_image.sh
```
## 01. 컨테이너 생성
``` bash
./01.create_container.sh
```
## 02. 컨테이너 연결
- 개인 키를 사용해서 컨테이너에 접속
``` bash
ssh -i ./id_rsa -p 포트번호 root@localhost
```
## 03. 컨테이너 삭제
``` bash
./02.destroy_container.sh
```
