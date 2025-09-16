SPRING_PID=$(pgrep -f stswebjpa-0.0.1-SNAPSHOT.jar)
SPRING_PATH="/home/jwah3/stswebjpa/target/stswebjpa-0.0.1-SNAPSHOT.jar"

echo $SPRING_PID
echo $SPRING_PATH

if [ -z "$SPRING_PID" ]; then
    echo "스프링이 종료된 상태"
    echo "스프링 재시작 - $(date)" 1>> /home/jwah3/spring-restart.log
    echo "jwah0812!" | nohup sudo java -jar $SPRING_PATH 1> /home/jwah3/stswebjpa/log.out 2> /home/jwah3/stswebjpa/log.start
else
    echo "스프링이 시작된 상태"
fi