docker pull bashokku/flaskapp
docker run -d -p 5000:5000 bashokku/flaskapp
/var/go/apache-jmeter-3.2/bin/jmeter -n -t /var/go/flask.jmx -l flasklpipe.jtl -j /var/go/jmeterpipe.log
grep "Err" /var/go/jmeterpipe.log > /var/go/errorlog
a=$(sed -e 's/\(^.*(\)\(.*\)\(%.*$\)/\2/' /var/go/errorlog)
echo $a
var=$(echo $a 0 | awk '{print $1 + $2}')
echo $var
if [ $var == 0 ];
then
echo "insideif"
echo "var val" $var
passed=1
echo "passedval" $passed
else 
echo "inside else"
passed=0
echo "passedval" $passed
exit 1 
#echo $passed
fi

#




#/var/go/apache-jmeter-3.2/bin/jmeter -n -t /var/go/flask.jmx -l var/go/flasklpipe.jtl -j /var/go/jmeterpipe.log
#docker-compose up --build -d
#test
#nothing her
## Comment22222
