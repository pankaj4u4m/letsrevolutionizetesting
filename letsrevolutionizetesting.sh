url="http://letsrevolutionizetesting.com/challenge.json"
turl=$url
while :
do
    echo $turl
    uid=`curl "$turl"`
    echo $uid
    id=`echo "$uid" | sed -e 's/.*=\([0-9]*\).*/\1/'`
    turl=$url"?id="$id
done
