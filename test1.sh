#!/bin/sh

while :
do
read -p "Please input code:" name

 if [ "$name" = "" ]; then
        echo "not input"
        break
 elif [ "$name" = "on" ]; then
        echo "LED ON"
        sudo sh -c "echo '1' >> /dev/myled0"
        sleep 1s
 elif [ "$name" = "off" ]; then
        echo "LED OFF"
        sudo sh -c "echo '0' >> /dev/myled0"
        sleep 1s
 else
        echo "ERRA:" $name
        break
 fi
done

exit 0
