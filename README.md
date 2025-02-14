# ansible-practice
## Directory
``` 
├── Docker
│   ├── 00.create_image.sh
│   ├── 01.create_container.sh
│   ├── 02.destroy_container.sh
│   ├── Dockerfile
│   ├── entry_point.sh
│   ├── id_rsa.pub
│   └── README.md
├── id_rsa                        # Container 접속용 개인키
├── inventory.yml
├── README.md
└── ssh_key_playbook.yml
```


## ansible playbook을 사용해서 inventory 초기화하기
``` bash
# --ask-pass 옵션은 접근할 매니지드 노드의 비밀번호를 터미널로 입력할 수 있게 만든다.
ansible-playbook -i inventory.ini ssh_key_playbook.yml --ask-pass 
```

