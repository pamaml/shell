refrsh_strt=$1
refresh_end=$2
klyin_env=$3

parseNV() {
        str=$1;
        srchVar=$2;
        for nv in `echo $str|sed 's/[\"\}\{]//g'|sed 's/,/\n/g'`;
        do
                nameVar=`echo $nv|cut -d ":" -f1`;
                nameVal=`echo $nv|cut -d ":" -f2`;
                if [ ${nameVar} == ${srchVar} ]; then
                        echo $nameVal;
                fi
        done
}


while read line
do
#echo $line | cut -d: -f5 | cut -d"," -f1 |read prtn_strt
#echo $line | cut -d: -f6 | cut -d"}" -f1 |read prtn_end
#echo $prtn_end  $refrsh_strt  $prtn_strt  $refresh_end
prtn_strt=`parseNV $line "dateRangeStart"`;
prtn_end=`parseNV $line "dateRangeEnd"`;
done
echo prtn_strt;
echo prtn_end;

echo "HELLO WORLD"
