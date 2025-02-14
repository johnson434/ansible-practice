IMAGE=my_ubuntu
PORT_START_RANGE=10000
PORT_END_RANGE=10002

if [ $PORT_START_RANGE -gt $PORT_END_RANGE ]; then
	echo "PORT_START_RANGE is greater then PORT_END_RANGE"
	exit 1
fi

for PORT in `seq $PORT_START_RANGE $PORT_END_RANGE`; do
	docker run -d --name "ansible-$PORT" -p $PORT:22 $IMAGE 
done
