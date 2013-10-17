
function sub_shell()
{
	var=`expr $1 \* $var`
	echo "in var = $var"
	return $var
}


i=0
max=0
var=10

for i in `seq 10`; do
	sub_shell $i &
done

for pid in $(jobs -p); do
	wait $pid
	var=$?
	if [ $var -gt $max ]; then
		max=$var
	fi
	echo "var = $var"
	echo "max = $max"
done

echo "max = $max"
echo "all done"
