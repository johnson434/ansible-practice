PORT_START_RANGE=10000
PORT_END_RANGE=10002


for port in `seq $PORT_START_RANGE $PORT_END_RANGE`; do
	docker rm -f "ansible-$port"
done
