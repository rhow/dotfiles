
for i in $(vagrant global-status | ag running | awk '{print $5}'); do 
    VAGRANTFILE=$i/Vagrantfile
    V_MEMORY=$(grep -i 'memory[ +]' $VAGRANTFILE | grep -v '#')
    V_CPU=$(grep -i 'cpus[ +]' $VAGRANTFILE)
    
    echo $V_MEMORY";" $V_CPU";" $VAGRANTFILE
done
