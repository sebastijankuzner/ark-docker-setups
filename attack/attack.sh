while :
do
    IFS=; request=`echo -e "GET / HTTP/1.1\n."`; request=${request%.}; yes $request | ncat 192.168.50.124 4000 > /dev/null
done
