cd $1 &> /dev/null

f=minix_$(date +%Y-%m-%d-%H-%M-%S)

mkdir $f &> /dev/null
for i in $(ls -a $HOME);do
    if [ $i != ".." ]; then
        if [ -d $HOME/$i ]; then
            mkdir $f/$i &> /dev/null
            cp -R $HOME/$i $f/$i &> /dev/null &
        else
            cp $HOME/$i $f &> /dev/null &
        fi
    fi
done

