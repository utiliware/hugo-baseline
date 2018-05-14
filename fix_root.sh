for o in `aws s3api list-objects --bucket www.inoutclock.com --query "Contents[?contains(Key, '/index.html')].Key" --output text`;\
do n=`echo ${o} | sed -e "s/\/index.html//g"`;
aws s3 cp s3://www.inoutclock.com/${o} s3://www.inoutclock.com/${n} 
done;