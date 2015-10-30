
for i in $(vagrant global-status | ag running | awk '{print $5}'); do 
    VAGRANTFILE=$i/Vagrantfile
    V_MEMORY=$(grep 'vb.memory' $VAGRANTFILE)
    V_CPU=$(grep 'vb.cpu' $VAGRANTFILE)
    
    echo $V_MEMORY";" $V_CPU";" $VAGRANTFILE
done
