# ansible-practice

## ansible playbook을 사용해서 inventory 초기화하기
```
# --ask-pass 옵션은 접근할 매니지드 노드의 비밀번호를 터미널로 입력할 수 있게 만든다.
ansible-playbook -i inventory.ini ssh_key_playbook.yml --ask-pass 
```

## inventory 작성법
- yml이나 ini 파일로 작성 가능
- 접근할 매니지드 노드의 유저명도 명시가 가능
		``` yml
		myhosts:
  		hosts:
  		  control-plane:
  		    ansible_user: vagrant
  		    ansible_host: 10.0.0.10
  		  node01:
  		    ansible_user: vagrant
  		    ansible_host: 10.0.0.11
  		  node02:
  		    ansible_user: vagrant
  		    ansible_host: 10.0.0.12
		```

