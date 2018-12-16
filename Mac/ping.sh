IPADDRESS="aws-cloud.guru"
INTERVAL=240

echo "IP ADDRESS:" $IPADDRESS
echo "TIMEOUT:" $INTERVAL

while true 
do 
    curl -w "@curl-format.txt" -o NUL -s $IPADDRESS 
    echo "Waiting" $INTERVAL "Seconds"
    sleep $INTERVAL 
done