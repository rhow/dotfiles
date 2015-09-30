ll
ansible-playbook -i locke/hosts bootstrap.yml -v
yes
ansible-playbook -i locke/hosts bootstrap.yml -v
nova list
nova list | ag locke
nova list | ag elk
ssh root@10.0.40.66
ssh root@10.0.40.70
nova list | ag locke
ssh root@10.0.40.81
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms1
less ansible.cfg 
ag remote_user
ag initial_remote_user
git pull
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms1
ansible-playbook -i locke/hosts bootstrap.yml -v -l icubed
ll
less ansible.cfg 
ll roles
ll roles/
ll roles/galaxy/
env ANSIBLE_KEEP_REMOTE_FILES=1 ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
nova list |ag locke
ssh root@10.0.40.81
ll
cd roles/open_root/tasks/
ll
less main.yml 
cd ..
cd ../../
ll
cd roles/open_root/tasks/
ll
vi main.yml 
emacs main.yml 
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
cd ../../
cd ..
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
less ansible.cfg 
fg
less ansible.cfg 
vi bootstrap.yml 
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
(cd ..; ln -s padawan/files)
ll ..
cd ..
ll files/
cd files
ll
cd ..
ll
rm -r files
ll
cd padawan/
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
ll ../files
cd ..
cd openstack/
ln -s padawan/files
ll
ll files
ll files/
cd pada
cd padawan/
ll
ll files/
rm files/ansible.pub 
cd files
ln -s ../../../../../dd_live.pub ansible.pub
ll
gstat
cd ..
ll
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
cd ~/git-repos/ansible/
python setup.py install 
. ./hacking/env-setup
cd ~/git-repos/cluster-builder/openstack/padawan/
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
vi bootstrap.yml 
ansible-playbook -i locke/hosts bootstrap.yml -v -l locke-ms2
htop
.screenlayout/dualscreen.sh
sudo reboot
cd /boot/
ll
sudo synaptic
exit
pithos &&
pithos &
exit
idea &
ll Programs/
Programs/idea/bin/
Programs/idea/bin/idea.sh &
exit
remmina &
exit
.screenlayout/dualscreen.sh
alias agu
apt-get --help
apt-get --help| more
vi .bash_aliases
cp .bash_aliases Dropbox/ubuntu/config/
diff .bash_profile Dropbox/ubuntu/config/.bash_profile 
cp .bash_profile Dropbox/ubuntu/config/.bash_profile 
lla | grep .
ls -a | grep .
ls -a | grep '.'
ls -a | grep '\.'
ls -a | grep '\.'| less
sudo find /etc | grep release
cat /etc/lsb-release 
cat /etc/os-release 
sudo find /etc | grep source
sudo find /etc | grep source| less
vi /etc/apt/sources.list
sudo vi /etc/apt/sources.list
bc
find . | grep keypass
sudo find . | grep keypass
sudo find / | grep keypass
exit
.screenlayout/dualscreen.sh
exit
./confirm-install-repos.sh 
cd ~/git-repos/mapserver_mapcache/
ll
gstat
rm -r deploy
rm -r deploy-manual.tar.gz 
mv deploy-was/ deploy
gstat
cd deploy/
gstat
ll
gstat
git stash
git pull
cd ..
git pull
cd deploy/
git stash pop
cd ~/git-repos/cluster-builder/openstack/padawan/
./confirm-install-repos.sh 
ll
vagrant up
vagrant provision
vagrant ssh
cd ..
git pull
ll
cd ..
cd mam/
ll
git pull
cd ../cluster-builder/
ll
cd openstack/padawan/
less confirm-install-repos.sh 
cd ../../
ll
cd ..
cd orch-ansible/
git pull
psg ssh-ag
cd ..
cat cluster-builder/openstack/padawan/confirm-install-repos.sh 
cd mugg-deploy/
git pull
cd ../padawan-ogc/
git pull
cd ../mam/
git pull
cd ../cluster-builder/openstack/padawan/
./confirm-install-repos.sh 
vagrant provision
vagrant ssh
cd ~/git-repos/mapserver_mapcache/de
cd ~/git-repos/mapserver_mapcache/deploy/
gstat
git stash
git pull
git log
less roles/mapserver/vars/main.yml
git pull
git log
cd ../../cluster-builder/openstack/padawan/
vagrant provision
vagrant ssh
vagrant provision
vagrant ssh
cd ~/git-repos
ll
cd mam
git status
git pull
cd ../cluster-builder/openstack/padawan/
ll
vagrant ssh
cd ~/mam
cd ~/git-repos/ma
cd ~/git-repos/mam/
git log
cd ../cluster-builder/openstack/padawan/
vagrant ssh
vagrant --help
vagrant --global-status
vagrant global-status
vagrant destroy
vagrant global-status
cd ~/git-repos/mapserver_mapcache/
cd deploy/
vagrant halt
exit
pithos
pithos &
exit
.screenlayout/dualscreen.sh
synapse
`

less .i3/config 
psg syna
less .i3/config 
synapse
synapse 
ping ops-07.i3.local
remmina 
remmina &
synapse 
sudo synapse 
synapse 
synapse &
exit
cd projects-django/padawan-ogc/
gstat
g diff .idea/dataSources.local.xml 
gstat
git rm --cached .idea/dataSources.local.xml 
gstat
g add .gitignore 
g commit -m 'Ignore the all of the .idea directory' .gitignore 
gstat
g diff apps/api/tests/test_models.py 
g diff apps/config
g diff apps/config.py 
gstat
g diff apps/api/models.py 
gstat
g add deploy/
g commit -m 'Adding testfiles into deploy' deploy/
g diff
gstat
g diff apps/api/
gstat
g diff apps/config.py 
gadd
gcommit 'Added support for Constellation'
g push
gstat
g branch
g branch adm-parent
g branch
g checkout -b adm-parent

g checkout -b adm-parent
g branch --help
g branch --delete adm-parent
g checkout -b develop
ll
gstat
g branch
rm padawan.log.1
ll
gstat
gadd
gcommit 'Fixed alignment of AdmAssets.get_post_payload'
git checkout master
git merge --no-ff develop
git push
hi cache
git rm --help
git rm -r --cached .idea/
gstat
gadd
gcommit 'Removing .idea (IntelliJ) directory from Git'
gstat
git push
g branch
g branch -d develop
gstat
vi ~/.bash_aliases
. ~/.bash_aliases
cp ~/.bash_aliases ~/Dropbox/ubuntu/config/
git checkout develop
git checkout -b develop
git branch 
gstat
cd deploy/shared/
ll
cd wms_map/
ll
less 54d9946e-2b62-477c-b133-232c4072b054.map 
rm *.map
ll
ll -t
head 38b6a53d-87c9-462f-8b76-379211d113d6.map 
head cd1930d6-b816-4f7b-97b9-06afe75386a3.map 
ll
ll -t
ag 8351f8dc0caf037e3d1e528bb00dc117 *.map
ll -S
ll -S | head
less beb92087-f43e-48c0-be78-8b70d976b414.map 
ll | wc -l
rm -f *.map
cd ../../
cd ..
gstat
vi ~/.bash_aliases
. ~/.bash_aliases
vi ~/.bash_aliases
. ~/.bash_aliases
cp ~/.bash_aliases ~/Dropbox/ubuntu/config/
vi ~/.bash_aliases
. ~/.bash_aliases
cp ~/.bash_aliases ~/Dropbox/ubuntu/config/
gdf apps/api/models.py 
gdf
g branch
gadd
gcommit 'Support Parent as the primary asset rather than the individual child assets'
git push
g branch master
less .git/config 
git push --set-upstream origin develop
g push
gdf
gadd
gcommit 'Put back in a condition used to simplify testing'
g push
g branch
g checkout master
gmerge develop
g push
cal
cal 2015-09
cal 201509
cal 20150901
cal 20150-09-01
cal --help
ncal
cal
cal --help
cal sept 2015
cd git-repos/mapserver_mapcache/
cd deploy/
ll
gstat
vagrant up
mount-gpfs
vagrant ssh
exit
cd projects-django/padawan-ogc/
ll
gstat
g branches
g branch
ln -s virtualenv/bin/activate
. ./activate 
which python
gstat
gdf
ag test README.md 
coverage run manage.py test -p 'test_[mu]*.py' -v 2
ag PYTHON README.md 
ll 
. ./setup_env.sh 
coverage run manage.py test -p 'test_[mu]*.py' -v 2
gstat
gstat apps/api/views.py 
gdf apps/
gstat
g branch
gadd
gcommit 'View function documention; fix test; ignore linked activate'
g push
g pull
g push
ll /data
mount-gpfs 
.screenlayout/dualscreen.sh
vi .i3/config 
ag 'mod+m' .i3/config 
ag 'mod+o' .i3/config 
ag 'mod\+o' .i3/config 
ag 'mod\+m' .i3/config 
vi .i3/config 
cp .i3/config Dropbox/ubuntu/config/.i3/
ll .i3/i3status.conf 
ll Dropbox/ubuntu/config/.i3/i3status.conf 
meld .i3/i3status.conf Dropbox/ubuntu/config/.i3/i3status.conf 
cd git-repos/mapserver_mapcache/deploy/
v up
v ssh
.screenlayout/dualscreen.sh
cd /data/dd/streaming/mapfiles/
ll
less nokia_wms.map
ll -S
cd tomtom/
ll
less wfs_metadata.map 
ll //data/1/dd/streaming/tomtom/wfs_metadata/Imagery/
ll -S //data/1/dd/streaming/tomtom/wfs_metadata/Imagery/| head
less wfs_metadata.map 
ll -S //data/1/dd/streaming/tomtom/wfs_metadata/Imagery/metadata_20121127.*| head
ll -S //data/1/dd/streaming/tomtom/wfs_metadata/Imagery/| head
gdalinfo  //data/1/dd/streaming/tomtom/wfs_metadata/Imagery/metadata_20121127.shp
cd
ping 192.168.251.170
ssh-copy-id --help
ssh-copy-id
ssh-copy-id root@192.168.251.170
ssh root@192.168.251.170
cat ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub 
ssh root@192.168.251.170
ssh-copy-id
ll ssh_rhow/

cat ~/.ssh/id_rsa
ssh-copy-id -i ~/ssh_rhow/budd1-gcdev.pem root root@192.168.251.170
ssh-copy-id -i ~/ssh_rhow/budd1-gcdev.pem root@192.168.251.170
ll ~/ssh_rhow/
diff ~/ssh_rhow/id_rsa ~/.ssh/id_rsa
cat ~/ssh_rhow/known_hosts 
hi ssh-copy
ll ~/.ssh
ssh-copy-id -i ~/.ssh/dd_live root root@192.168.251.170
ssh-copy-id -i ~/.ssh/dd_live.pub root root@192.168.251.170
ssh-copy-id root@192.168.251.170
history
ll .ssh/
ll ssh_rhow/
df
df -h
nucd
nscd
ncdu
hi ncdu
ncdu .
cd .ssh/
ll
rm id_rsa*
ll
ssh-keygen 
ll
hi ssh-copy
ssh-copy-id root@192.168.251.170
ssh root@192.168.251.170
ll
lla
man ssh_config 
vi config
ssh 192.168.251.170
cd ../ssh_rhow/
ll
cd ~/projects-django/padawan-ogc/
ll
gstat
cd ~/git-repos
cd mapserver_mapcache/deploy/
ll
gstat
ll build
g diff build/hosts
diff build/hosts build/hosts-was 
less build/hosts
less build/hosts-was 
ag hosts
ll
g stat
gstat 
ll
less README.md 
lla
cat .git/
ll .git
cat .git
ag tar
ll /data/1/misc/padawan/deploy/
ag private_key
ag ssh_pub_key
ansible --version
ll
cat requirements.txt 
pyenv versions
pyenv local 2.7.7
pyenv global 2.7.7
ll
virtualenv virtualenv
ln -s virtualenv/bin/activate
. ./activate 
pip install -r requirements.txt 
tail ~/.pip/pip.log 
sudo apt-get install libbz2-dev
gdebi --help
sudo apt-get install -f libbz2-dev
alias *
alias agu 
agu
pip install -r requirements.txt 
tail ~/.pip/pip.log 
apt-cache search bz2
apt-cache search bz2| ag bz2
sudo apt-get install lib64bz2-dev
sudo apt-get install -f lib64bz2-dev
sudo apt-get install -f libbz2-dev
pip install -r requirements.txt 
sudo apt-get install -f libbz2-dev
cat requirements.txt 
pip install -r requirements.txt 
which python
python --version
python
pyenv versions
deactivate 
python
python3.3
python3
which bzip2
pyenv versions
pyenv local 3.3.5
which python
python
pyenv
pyenv system
pyenv local system
which python
pyenv versions
which python
/usr/bin/python2.7
sudo apt-get install libssl-dev libsqlite3-dev libreadlines-dev libbz2-dev
sudo apt-get libreadlines-dev libbz2-dev
sudo apt-get install  libreadline-dev libbz2-dev
apt-cache search libreadlines
apt-cache search libread
sudo apt-get install libssl-dev libsqlite3-dev libreadline-dev libbz2-dev
sudo apt-get install -f libssl-dev libsqlite3-dev libreadline-dev libbz2-dev
gdebi ~/Downloads/libbz2-dev_1.0.6-7_amd64.deb 
sudo gdebi ~/Downloads/libbz2-dev_1.0.6-7_amd64.deb 
. activate 
. ./activate 
python
sudo apt-get install libssl-dev libsqlite3-dev libreadlines-dev libbz2-dev
sudo apt-get install libssl-dev libsqlite3-dev libreadline-dev libbz2-dev
deactivate 
ll
rm -r virtualenv/
ll
pyenv --help
pyenv --versions
pyenv versions
pyenv uninstall django-py277-rest-angular 
pyenv uninstall django-py277-rest-firstapp 
pyenv uninstall django-py335-rest-tutorial 
pyenv uninstall django-py335-rest-angular 
pyenv uninstall vdjango-py274 
pyenv uninstall vdjango-py335 
pyenv uninstall venv34 
pyenv versions
pyenv uninstall 2.7.7 
pyenv install 2.7.7 
ll
pyenv local 2.7.7
virtualenv virtualenv 
ll
. ./activate 
python
which python
python --version
rm -r virtualenv/
deactivate 
pyenv global 2.7.7
pyenv versions
pyenv local 2.7.7
pyenv versions
pyenv version 2.7.7
pyenv version
pyenv 
pyenv version
env | ag -i pyenv
pyenv local 2.7.7
pyenv global 2.7.7
pyenv version
exit
cd
ping dev-18.i3.local
curl dev-18.i3.local
curl http://dev-18.i3.local
curl http://dev-18.i3.local:22930
curl http://10.200.40.145:22930
curl http://10.200.40.145:22930/wcs/e8073975-a896-4c43-993a-67cc5d412df6?
curl http://10.200.40.145:22930/wcs/e8073975-a896-4c43-993a-67cc5d412df6?SERVICE=WCS&VERSION=1.0.0&REQUEST=GetCapabilities
ping ops-07
ping ops-07.i3.local
curl http://10.200.40.137:22930/wcs/e8073975-a896-4c43-993a-67cc5d412df6?SERVICE=WCS&VERSION=1.0.0&REQUEST=GetCapabilities
curl http://10.200.40.137:22934
sudo vi /etc/apt/sources.list
sudo apt-get install qgis python-qgis qgis-plugin-grass
sudo vi /etc/apt/sources.list
sudo apt-get install qgis python-qgis qgis-plugin-grass
cd git-repos
ll
cd cluster-builder/
ll
ag locke
ag fermi
ll
cd openstack/
ll
ll padawan/
cd padawan/
ll
cd locke/
ll
ll group_vars
ll group_vars/
curl http://192.168.251.170/index.html
cd..
cd ..
ag change
ag firewalld
ag firewall
exit
mount-gpfs 
cd git-repos/mapserver_mapcache/
cd deploy/
v up
v ssh
exit
cd 
cd projects-django/padawan-ogc/
ll
gstat
cd deploy/shared/
ll
rm -f *.map
rm -f wms_map/*.map
cd ../../
gstat
gadd
gcommit 'Implemented wms_adm_query with p_query and p_mask functionality'
g push
gstat
g diff apps/
g add apps/
g commit -m 'Removed the bangs from kwargs'
g push
diff apps/config.py deploy/ansible/roles/i3.padawan/templates/config.py.j2 
meld apps/config.py deploy/ansible/roles/i3.padawan/templates/config.py.j2 
ll
. ./activate 
python
gstat
g add apps/
gstat
g diff apps/
g commit -m 'Added decoding to the file_name' apps/
g push
gstat
g add deploy/ansible/project-configs/
gstat
g diff deploy/ansible/roles/
gstat
gadd
gcommit 'Created project-configs and updated the anisble roles'
g push
pyenv version
cd ~/git-repos/mapserver_mapcache/deploy/
ll
pyenv local 2.7.7
pyenv global 2.7.7
virtualenv virtualenv 
virtualenv virtualenv
pyenv versions
python
which virtualenv 
env | ag PYTHON
env
env | ag PY
ll
virtualenv
ag virutal /home/likewise-open/I3/rhow/.bashrc
ag virutal /home/likewise-open/I3/rhow/.bash_profile 
ag -i virutal /home/likewise-open/I3/rhow/.bash_profile 
ag -i virutal /home/likewise-open/I3/rhow/.bashrc
pyenv
pip install virtualenv
virtualenv virtualenv
ll
. ./activate 
pip install -r requirements.txt 
ll
pip install -r requirements.txt 
ansible-playbook --help
ll
gtstat
gstat
cat build/hosts
cat build/hosts-was 
hi ssh-cop
vi build/hosts
ansible -m ping -i build/hosts
ansible -m ping -i build/hosts all
ag private
ag private_key
ag private_key_file
ll
lla
vi .gitignore
ag private_key_file
vi ansible.cfg 
ansible -m ping -i build/hosts all
gstat

ll inventory/
ll build/
ansible -m ping -i build/hosts all
gstat
rm -r build/hosts-was 
ll
ll inventory/
cat inventory/private.yaml.example 
gstat
g add .gitignore 
g commit 'Added virtualenv'
g commit -m 'Added virtualenv' .gitignore 
gstat
g diff Vagrantfile 
gstat
cat build/hosts 
ll
cat inventory/vars.yaml 
l inventory/vars.yaml 
les inventory/vars.yaml 
vi inventory/vars.yaml 
gstat
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml -vvv
ag build/hosts 
cat build/hosts 
ag mapbuild
ag mapserver
ag '[mapserver]'
ag '\[mapserver\]'
vi inventory/hosts
ag '\[mapserver\]' -C 3
vi build/hosts 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
hi 170
ag user
ag root
ag private_key
vi ansible.cfg 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ll inventory/
chmod 600 inventory/centos.pem 
ll inventory/
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml -vvv
ag pub
cat inventory/vars.yaml 
less inventory/vars.yaml 
ll
ll inventory/
pwd
vi inventory/vars.yaml 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml -vvv
hi ssh
ssh 192.168.251.170
cat inventory/centos.pub 
ssh 192.168.251.170
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml -vvv
ssh 192.168.251.170 
ssh 192.168.251.170 -i inventory/centos.pem 
ssh root@192.168.251.170 -i inventory/centos.pem 
ssh -i inventory/centos.pem root@192.168.251.170
ssh -i inventory/centos.pe root@192.168.251.170
ssh -i inventory/centos.pem root@192.168.251.170
ssh root@192.168.251.170
ssh 192.168.251.170
ssh -i inventory/centos.pem root@192.168.251.170
ssh 192.168.251.170
cat inventory/centos.pub 
cat inventory/centos.pub | xclip
ssh 192.168.251.170
ssh -i inventory/centos.pem root@192.168.251.170
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml -vvv
ag vagrant
vi inventory/vars.yaml 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml -vvv
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ag authorized_key
ag open_root
vi playbooks/mapserver.yaml 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ag 'file path'
vi playbooks/mapserver.yaml 
ag unicode
ag path
vi playbooks/mapserver.yaml 
ssh -i inventory/centos.pem root@192.168.251.170
ag httpd
ll
ll roles/
cd roles/mapserver/
ll
les vars/main.yml 
les tasks/main.yml 
vi tasks/main.yml 
cd ..
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ag item.cred_src
vi roles/mapserver/tasks/main.yml 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ssh -i inventory/centos.pem root@192.168.251.170
ssh 192.168.251.170
ll
vagrant status
v ssh
ssh 192.168.251.170
vi roles/mapserver/tasks/main.yml 
vi roles/mapserver/vars/main.yml 
gstat
g add roles/mapserver/vars/main.yml 
g commit -m 'added unixODBC-devel, jasper-devel, netcdf-devel' roles/mapserver/vars/main.yml 
g push
ag restart
emacs roles/mapserver/tasks/main.yml 
ag firewall
ag firewall /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/
ag firewall /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/ | grep disable
ag firewall /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/ | grep dis
ag firewall /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/roles
fg
ag notify /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/roles
ag notify /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/roles -C 3
ag restart /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/roles -C 3
gstat
ag restart /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible/roles -C 3
fg
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
fg
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ssh 192.168.251.170
gstat
git push
ll
lla
lla ..
cat ../.git/modules/deploy/config 
cat ../.git/config 
hi diff
g diff master master
g diff master origin/master
g push
echo ~/.ssh/id_rsa.pub 
cat ~/.ssh/id_rsa.pub | xclip
alias xclip
g push
cat /data/1/dd/streaming/mapfiles/
cat /data/1/dd/streaming/mapfiles/template.html 
ag -i template
ag template /data/1/dd/streaming/mapfiles/
ag template /data/1/dd/streaming/mapfiles/ -C 3
gstat
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
ssh 192.168.251.170
gstat
g diff Vagrantfile 
ll
ll project-configs
mkdir project-configs
mkdir project-configs/wicked-mapserver
vi project-configs/wicked-mapserver/README.md
gstat
g diff build/
cp build/hosts project-configs/wicked-mapserver/
vi project-configs/wicked-mapserver/hosts 
gstat
g diff roles
gstat
gdf playbooks/
gstat
g diff roles/mapserver/handlers/
g add roles/mapserver/handlers/main.yml 
g commit -m 'Added firewalld restart handler'
g push
gstat
hi -playbook
hi playbook
gstat
g diff inventory/vars.yaml 
vi inventory/vars.yaml 
ansible-playbook -e '@inventory/vars.yaml' -i build/hosts playbooks/mapserver.yaml
gstat
vi inventory/vars.yaml 
g diff inventory/vars.yaml 
g add inventory/vars.yaml 
g commit -m 'Cleaned up some conflict and remove not needed vars'
g push
gstat
ll build/
ll
gstat
ansible-playbook -e '@inventory/vars.yaml' -i project-configs/wicked-mapserver/hosts playbooks/mapserver.yaml
mkdir inventory/vars.yaml project-configs/wicked-mapserver/inventory
mkdir project-configs/wicked-mapserver/inventory
ll project-configs/wicked-mapserver/inventory/
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -i project-configs/wicked-mapserver/hosts playbooks/mapserver.yaml
mkdir project-configs/wicked-mapserver/playbooks
cp playbooks/mapserver.yaml project-configs/wicked-mapserver/playbooks/
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
ag index.html
vi roles/mapserver/tasks/main.yml 
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
g diff roles/mapserver/tasks/main.yml 
vi roles/mapserver/tasks/main.yml 
fg
ag mount_point
cp inventory/private.yaml.example inventory/private.yaml
fg
mv inventory/private.yaml project-configs/wicked-mapserver/inventory/
fg
ll
hi ansible
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
fg
cat inventory/private.yaml
ag private
less inventory/group_vars/all.yaml 
ag private.yaml
ll
cat Makefile 
ll inventory/
ll project-configs/wicked-mapserver/inventory/
mv inventory/private.yaml project-configs/wicked-mapserver/inventory/
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml'  -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
fg
ssh 192.168.251.170
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml'  -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t mount
ssh 192.168.251.170
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml'  -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t mount
ssh 192.168.251.170
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml'  -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml 
echo 'ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml'  -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml'| xclip
fg
gstat
g diff build/hosts 
git checkout build/hosts
gstat
fg
gstat
g add .gitignore
gstat
g add project-configs/
gstat
fg
gstat
g add .gitignore 
g commit -m 'Added few more ditties' .gitignore 
g diff playbooks/
gstat
g diff roles/
gstat
g diff roles
g add roles/
gstat
g commit -m 'Create the wicked-mapserver project-config' project-configs/
g push
gstat
g commit -m 'Touched on the mount points and check if index html files exists' roles/
g push
gstat
g diff playbooks/
hi ansible
diff playbooks/mapserver.yaml project-configs/wicked-mapserver/playbooks/mapserver.yaml 
hi ansible | tail
cat project-configs/wicked-mapserver/README.md
git checkout playbooks/mapserver.yaml
ll
gstat
fg
gstat
g add project-configs/
g commit -m 'Added setup' project-configs/
cd ~/projects-django/padawan-ogc/
ll
cd deploy/
ll
cd ansible/
ll
cat hosts 
mkdir -p project-configs/wicked-padawan-ogc
cp hosts project-configs/wicked-padawan-ogc/
fg
ll
hi ansible-play | tail
fg
ansible-playbook padawan.yaml -i project-configs/wicked-padawan-ogc/hosts
ansible-playbook padawan.yaml -i project-configs/wicked-padawan-ogc/hosts -vvvv
ag initialization
fg 
ansible-playbook padawan.yaml -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.170
ansible-playbook padawan.yaml -i project-configs/wicked-padawan-ogc/hosts
cat roles/i3.nginx/
cat roles/i3.nginx/tasks/main.yaml 
ssh 192.168.251.170
cat roles/i3.nginx/tasks/main.yaml 
ssh 192.168.251.170
ll
ssh 192.168.251.170
ansible-playbook padawan.yaml -i project-configs/wicked-padawan-ogc/hosts
hi ansible-playbook
ansible-playbook padawan.yaml -i project-configs/wicked-padawan-ogc/hosts
ssh-copy-id root@192.168.251.171
vi ~/.ssh/config 
ssh 192.168.251.171
vi ~/.ssh/config 
ssh 192.168.251.171
emacs hosts 
less project-configs/wicked-padawan-ogc/README.md 
hi ansible-play
hi ansible-play| tail
ansible-playbook padawan.yaml -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.171
ll
less roles/i3.padawan/vars/main.yaml 
less roles/i3.padawan/defaults/main.yaml 
emacs project-configs/wicked-padawan-ogc/vars.yaml
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ag 'checkout the repo from git'
ag 'checkout the repo from git' -C 3
less roles/i3.git/tasks/main.yaml 
emacs roles/i3.git/tasks/main.yaml 
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git_clone
less roles/i3.git/tasks/main.yaml 
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git_checkout
fg
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.171
fg
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.171
vi project-configs/wicked-padawan-ogc/hosts
vi project-configs/wicked-padawan-ogc/vars.yaml
less roles/i3.padawan/vars/main.yaml 
less roles/i3.padawan/defaults/main.yaml 
vi project-configs/wicked-padawan-ogc/vars.yaml
hi ansi | tail
fg
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
fg
ssh 192.168.251.171
less roles/i3.padawan/defaults/main.yaml 
fg
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
fg
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
fg
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.171
ssh 192.168.251.170
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.170
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.170
cd ~/projects-django/padawan-ogc/deploy/ansible/
ag firewall
ll
cat ansible.cfg 
cat README.md 
cd ~/git-repos/mapserver_mapcache/deploy/
ll
ag httpd
ag apache
cd project-configs/wicked-mapserver/
ll
fg
emacs README.md
gstat
google-chrome README.md
gstat
g add README.md
git commit -m 'More documentation and formating on the README.md'
git push 
cd ../../..
cd deploy/
ll
ag Listen
ag httpd.conf-2.4
ag httpd.conf
ag httd
ag httpd
ag conf
ag conf| less
ag httpd
ag template
ag httpd
ag template
less playbooks/mapserver.yaml 
less roles/mapserver/tasks/main.yml 
less roles/mapserver/defaults/main.yml 
less roles/mapserver/vars/main.yml 
less roles/mapserver/meta/main.yml 
less roles/mapserver/README.md 
ag ms_info
ag template
less project-configs/wicked-mapserver/playbooks/mapserver.yaml 
ag ansible project-configs/wicked-mapserver/README.md
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
. ./activate 
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
hi ssh | tail
ssh 192.168.251.170
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
ssh 192.168.251.170
gstat
less roles/mapserver/vars/main.yml 
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t firewall
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t firewall -vvvv
fg
gstat
fg
less project-configs/wicked-mapserver/playbooks/mapserver.yaml 
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t httpd_conf
ssh 192.168.251.170
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t httpd_conf
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t httpd_conf
fg
ag handlers
less roles/mapserver/handlers/main.yml 
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t httpd_conf
ssh 192.168.251.170
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t httpd_conf
gstat
g add project-configs/ roles/
g commit -m 'Added configurable httpd port' project-configs/ roles/
g push
ssh 192.168.251.170
cat project-configs/wicked-mapserver/hosts 
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t firewall
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t firewall -vvvv
ssh 192.168.251.170
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t firewall -vvvv
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
ssh 192.168.251.170
emacs
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
exit
cd git-repos/mapserver_mapcache/deploy/
ll
v up
VBoxManage --version
sudo apt-get install virtualbox-dkms
sudo apt-get purge virtualbox-dkms
sudo apt-get install virtualbox-dkms
VBoxManage --version
v up
v ssh
mount-gpfs 
v ssh
cd ~/projects-django/padawan-ogc/deploy/ansible/
ll
cd ..
ll
cd ansible/
ll
less README.md 
ssh root@gpfs5.i3.com
ssh root@gpfs05.i3.com
hi gpfs
ssh root@av-gpfs5.i3.com
ssh ftc-ms01.i3.local
vi ~/.ssh/config 
ssh ftc-ms01.i3.local
cd ~/git-repos/mapserver_mapcache/deploy/
v ssh
v up
ll
v global-status
v reload
v shs
v ssh
exit
hi ftc
ssh ftc-ms01.i3.local
ifconfig
les Vagrantfile 
ssh ftc-ms01.i3.local
sudo iptables-save 
sudo iptables-save | less
sudo iptables -t nat -I PREROUTING -p tcp --dport 122 -j DNAT --to-destination 192.168.27.150:22
ssh -p 122 localhost
ifconfig
ifconfig| ag inet
ssh 192.168.27.150
sudo iptables-save 
sudo iptables-save | less
cat  /proc/sys/net/ipv4/ip_forward
less Vagrantfile 
ifconfig
exit
.screenlayout/dualscreen.sh
hi ssh
cd ssh 192.168.251.170
ssh 192.168.251.170
vagrant --help
vagrant 
vagrant global-status
cd VirtualBox\ VMs/fromJohn
ll
htop
cd ~/git-repos/mapserver_mapcache/deploy/
ll
v status
v suspend
vagrant global-status
htop
ssh 192.168.251.170
cd 
cd /data/
du -h /data/1/dd/streaming/airbus/imagery/20141118/ .
du -hs /data/1/dd/streaming/airbus/imagery/20141118/
vi ~/.i3/config 
echo '/data/1/dd/streaming/airbus/imagery/20141118/'| xclip
exit
cd projects-django/padawan-ogc/
gstat
alias gdf 
gdf apps/config
gdf apps/config.py 
gstat
gadd
gcommit -m 'Implemented p_overlay for the wms_query api'
gcommit 'Implemented p_overlay for the wms_query api'
g push
cd deploy/ansible/
ll
pwd | xclip
cd ~/git-repos/mapserver_mapcache/deploy/
ll
. ./activate 
cd /home/likewise-open/I3/rhow/projects-django/padawan-ogc/deploy/ansible
ll
ag template
find config.py.j2
find file=config.py.j2
find / | ag config.py.j2
find . | ag config.py.j2
emacs roles/i3.padawan/templates/config.py.j2 
less README.md 
hi ansible-play
ll
fg
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ssh 192.168.251.170
gstat
gdf roles/
gadd
gcommit 'Added support for p_query to be encoded'
g push
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
gstat
gdf
gadd
gcommit 'Fixed some url encoding issues'
g push
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts
ag git
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git-repo
llt ../shared/wms_map/
llt ../shared/wms_map/| head
les ../shared/wms_map/95251847-2cc8-4126-a2a4-5c672d6401dc.map 
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git-repo
gstat
gdf
cd ../..
cd deploy/shared/wms_map/
ll -t | head
less 18015701-7488-4203-ba80-f158908e70fd.map 
rm -f *.map
ll
ag SCALE
head 039b1b83-34a8-44b3-8957-ec8c8e67d388.map 
ag SCALE *.map
ll | wc -l
llw
alias llw='ll | wc -l'
llw
llt | head
less d4764d08-76cf-4c70-a419-e2efbf2f9705.map 
cd ../../..
ll
gstat
gdf deploy
g add deploy/
g commit -m 'Appears git module checks if needed, added tags'
g push
gstat
gdf
ag test README.md 
coverage run manage.py test -p 'test_[mu]*.py' -v 2
which python
hi ansibl
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git-repo
cd deploy/
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git-repo
cd ansible/
ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git-repo
echo 'ansible-playbook padawan.yaml -e '@project-configs/wicked-padawan-ogc/vars.yaml' -i project-configs/wicked-padawan-ogc/hosts -t git-repo' | xclip
gstat
gadd 
gcommit 'Update the examples in the README.md'
g push
which python
hi scan
psg scan
ls /data/
less d4764d08-76cf-4c70-a419-e2efbf2f9705.map 
clamscan --help |less
cronjob -l
cron -l
crontab -l
htop
sudo crontab -l
sudo crontab -e
/usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected / --exclude-dir=^/sys\|^/proc\|^/dev|^/data 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected / --exclude-dir=^/sys\|^/proc\|^/dev|^/data 2>/dev/null
psg scan
kill -9 12073
kill -9 12075
psg
psg scan
sudo kill -9 12075
sudo kill -9 12073
psg scan
sudo kill -9 12918
psg scan
sudo kill -9 12920
psg scan
sudo kill -9 14392
psg scan
sudo kill -9 32020
psg scan
hi scan
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected / --exclude-dir=^/sys\|^/proc\|^/dev|^/data 2>/dev/null
psg scan
ll /var/log/clamav/
ll -h /var/log/clamav/
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/dev|^/data / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/dev|^/data|^/mounts / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/dev|^/data / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/dev|^/data|^/mounts / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/dev|^/data / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/dev|^/mounts|^/data / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/mounts|^/data / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/mounts|^/data|^/dev / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/mounts|^/data|^/dev| / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/mounts|^/data|^/dev / 2>/dev/null
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/mounts\|^/data\|^/dev / 2>/dev/null
dpkg -l | grep clamav
psg fresh
psg freshclam
sudo kill -9 5326
sudo /usr/bin/freshclam --quiet; /usr/bin/clamscan --recursive --no-summary --infected --exclude-dir=^/sys\|^/proc\|^/mounts\|^/data\|^/dev / 2>/dev/null
sudo crontab -e
fg
vi ~/Dropbox/ubuntu/config/notes.txt
vagrant global-status
ll
less Vagrantfile
vagrant up
vagrant global-status
vboxmanage 
vbox
vboxmanage 
VBoxManage
less Vagrantfile
ping 192.168.33.10
vagrant status
ssh 192.168.33.10
ssh vagrant@192.168.33.10
ssh-keygen -f "/home/likewise-open/I3/rhow/.ssh/known_hosts" -R 192.168.33.10
ssh vagrant@192.168.33.10
cd ~/projects-django/padawan-cache-management
ll
mkdir -p deploy/ansible
ll ../padawan-ogc/deploy/ansible/
lla ../padawan-ogc/deploy/ansible/
cp -r ../padawan-ogc/deploy/ansible/ deploy/ansible/
cd deploy/
ll
ll ansible/
mv ansible/ ansible_old
mv ansible_old/ansible/ .
ll
rm ansible_old/
rm -r ansible_old/
ll
cd ansible/
ll
lla
cat ansible.cfg 
mv padawan.yaml padawan-cache.yaml
ll
lla
fg
emacs README.md 
python
fg
ll
mv project-configs/wicked-padawan-ogc/ project-configs/wicked-padawan-cache
fg
mv roles/i3.padawan/ roles/i3.padawan-cache
ll roles/i3.padawan-cache/
fg
exit
cd ~/git-repos/mapserver_mapcache/deploy/
ll
. ./activate 
ag icubed-mapserver-20150722_ms6_k75sp_g2_mc14-seedogr-s3dim.tar
ag mapserver
ag mapserver_parts
emacs project-configs/wicked-mapserver/inventory/vars.yaml 
hi ansi
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml
less project-configs/wicked-mapserver/playbooks/mapserver.yaml 
less project-configs/wicked-mapserver/inventory/vars.yaml 
cat roles/mapserver/vars/main.yml 
cat roles/mapserver/tasks/main.yml 
fg
ansible-playbook -e '@project-configs/wicked-mapserver/inventory/vars.yaml' -e '@project-configs/wicked-mapserver/inventory/private.yaml' -i project-configs/wicked-mapserver/hosts project-configs/wicked-mapserver/playbooks/mapserver.yaml -t ms-install
ssh 192.168.251.170
ag parts
which python
exit
v global-status
sudo shutdown -h now
. ./activate 
coverage run manage.py test -p 'test_[mu]*.py' -v 2
ll
./setup_env.sh 
coverage run manage.py test -p 'test_[mu]*.py' -v 2
echo $PYTHOHPATH
export $PYTHOHPATH=`pwd`
export PYTHOHPATH=`pwd`
echo $PYTHOHPATH
coverage run manage.py test -p 'test_[mu]*.py' -v 2
export PYTHOHPATH=`pwd`/apps
echo $PYTHOHPATH
coverage run manage.py test -p 'test_[mu]*.py' -v 2
cat setup_env.sh 
echo $PYTHOHPATH
ll
cd apps/
coverage run manage.py test -p 'test_[mu]*.py' -v 2
cd ..
coverage run manage.py test -p 'test_[mu]*.py' -v 2
coverage run manage.py test
coverage run manage.py test -p 'test_[mu]*.py' -v 2
which python
echo $PYTHOHPATH
export PYTHOHPATH=`pwd`/apps,`pwd`/apps/api
echo $PYTHONPATH
export PYTHOHPATH=`pwd`/apps
echo $PYTHONPATH
export PYTHONPATH=`pwd`/apps,`pwd`/apps/api
echo $PYTHONPATH
coverage run manage.py test -p 'test_[mu]*.py' -v 2
gstat
gdf apps/config.py 
gadd
gdf apps/api/views.py 
g diff apps/api/views.py 
gstat
gcommit 'Fixed the tests; Added MaxScale2'
g push
gstat
which python
echo $PYTHONPATH
hi coverage
coverage run manage.py test -p 'test_[mu]*.py' -v 2
cat setup_env.sh 
echo $PYTHONPATH
coverage run manage.py test -p 'test_[mu]*.py' -v 2
ls
ll
echo $PYTHONPATH
ls apps/
ls apps/api/
which python
ll
lla
cat .python-version 
python
export PYTHONPATH='/home/likewise-open/I3/rhow/projects-django/padawan-ogc:/home/likewise-open/I3/rhow/projects-django/padawan-ogc/appsn^users  154 Dec 19  2014 setup_env.sh*'
echo $PYTHONPATH
export PYTHONPATH='/home/likewise-open/I3/rhow/projects-django/padawan-ogc:/home/likewise-open/I3/rhow/projects-django/padawan-ogc/apps'
python
emacs
coverage run manage.py test -p 'test_[mu]*.py' -v 2
gstat
g add setup_env.sh
g commit -m 'Updated the settings for the PYTHONPATH' setup_env.sh
fg
gstat
g add setup_env.sh
g commit -m 'Updated the settings for the PYTHONPATH' setup_env.sh
gstat
gdf
g pull
gadd
gcommit 'Repsect the apply_overlay in the mapfile_data template'
g push
htop
clamscan --help
clamscan --help | less
psg clamscan
freshclam --help
psg scan
ll /etc/ | ag scan
gstat
git checkout develop/
git checkout deploy/
gstat
ping-test
exit
ping-test
ifconfig
route
ping 192.168.220.254
ping-test
ping-test 
exit
df
ll /media/I3\\rhow/
ll /media/I3\\rhow/SP PHD U3/
ll /media/I3\\rhow/SP\ PHD U3/
ll /media/I3\\rhow/SP\ PHD\ U3/
ll /data
mkdir -p /data/1/dd/streaming
ll /data
ll /
sudo mkdir -p /data/1/dd/streaming
ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus/imagery /data/1/dd/streaming/
sudo ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus/imagery /data/1/dd/streaming/
ll /data/1/dd/streaming/imagery/20141118/
ll
ll /data/1/dd/streaming/
cd /data/1/dd/streaming/
ll
rm imagery
sudo rm imagery
ll
sudo mkdir airbus

sudo ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus/ /data/1/dd/streaming/airbus/
ll
ll airbus/
ll
sudo rm airbus/airbus
ll
ll airbus/
sudo ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus/imagery /data/1/dd/streaming/airbus/
ll
ll airbus/
ll airbus/imagery/20141118/
ll
rm airbus/imagery
sudo rm airbus/imagery
ll
rm -r airbus/
sudo rm -r airbus/
ll
sudo ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus/ /data/1/dd/streaming/airbus/
sudo ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus/ /data/1/dd/streaming/
ll
ll airbus/imagery/
ll airbus/imagery/20141118/
cd
ll /data/1/dd/
ifconfig
route
v global-status
cd git-repos/mapserver_mapcache/deploy/
v ssh
v reload
net-restart 
v ssh
exit
v global-status
cd VirtualBox\ VMs/fromJohn
ll
v ssh
v up
v ssh
v status
v ssh
v suspend
v global-status
v
v halt
exit
route
net-restart 
ping-test 
route
ping 10.200.0.1
net-restart 
route
net-restart 
hi submit
bc
htop
sudo reboot
v ssh
v status
v halt
htop
sudo htop
cd git-repos/mapserver_mapcache/deploy/
ll
v up
v ssh
emacs Vagrantfile 
fg
v reload
v ssh
fg
v reload
v ssh
df
ll /media/I3\\rhow/
ls
ls /media/I3\\rhow/
ls /media/I3\\rhow/ | xclip
ls /media/I3\\rhow/SP PHD U3
ls /media/I3\\rhow/SP\ PHD\ U3
ls /data/1/dd/
ls /data/1/dd/streaming/airbus/imagery/
ls /data/1/dd/streaming/
ls /data/1/dd/streaming/airbus
ls /data/1/dd/streaming/
ls /data/1/dd/
ls /data/
ll
ll /data/
ll /data
ll /data/1/
ll /data/1/dd/
ll /data/1/dd/streaming/
rm airbus
cd /data/1/dd/streaming/
ll
sudo rm airbus
ll
hi ln
sudo ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus /data/1/dd/streaming/
ll
sudo rm airbus
ll
sudo ln -s /media/I3\\rhow/SP\ PHD\ U3/airbus /data/1/dd/streaming/
ll
cd ~/projects-django/padawan-ogc/
cd deploy/shared/mapcache/
ll
cd ../wms_map/
ll
ll | wc -1
ll | wc -l
rm *.map
ll
ll -t | head
vi 73e2b0b3-5523-4d5d-b4a2-7584ca6058a6.map 
ll
ll -t | head
head 06519cdb-b709-4c1a-b2ca-cb59d9be2ebd.map 
less 06519cdb-b709-4c1a-b2ca-cb59d9be2ebd.map 
ll
rm -f *.map
ll
head 0c20c957-af77-4e07-8f26-313d11581768.map 
vi 0c20c957-af77-4e07-8f26-313d11581768.map 
ll
less debug_padawan.txt 
rm -f *.map
ll
ll | wc -l
rm -f *.map
ll
rm debug_padawan.txt 
ll
htop
ll | wc -l
rm -f *.map
ll
htop
hi submit
cd ..
cd ../padawan-cache-management-ui/
ll
less README.md 
cd server/
ll
cd ..
ll
ln -s virtualenv/bin/activate
ll
. ./activate 
less README.md 
python server/api.py 
ll
ag user 
python server/api.py 
ag host
python server/api.py 
cd projects-django/padawan-cache-management
ll
lla
cat .python-version 
pyenv versions
. ./activate 
cd misc/
ll
python submit-seeding-job.py 
cd ..
..
ll
export PYTHONPATH=`pwd`
cd misc/
python submit-seeding-job.py 
cd 
cd /media/I3\\rhow/
ll
cd SP\ PHD\ U3
ll
chmod -R 775 airbus
ll
ll airbus/
chmod -R 775 airbus/*
ll airbus/imagery/
ll
ll airbus/
ll /data/1/dd/streaming/
ll /data/1/dd/
ll /data/1/dd/streaming/airbus
cd /data/1/dd/streaming/airbus
ll
chmod -R 775 imagery/
ll 
chmod -R 775 imagery
ll
chmod -R 775 imagery
pwd
sudo chmod -R 775 imagery
ll
ll /etc/fstab
less /etc/fstab
ll
hi python
cd ~/projects-django/padawan-cache-management/
cd misc/
python submit-seeding-job.py 
emac submit-seeding-job.py 
emacs submit-seeding-job.py 
python submit-seeding-job.py 
fg
python submit-seeding-job.py 
fg
python submit-seeding-job.py 
bc
fg
cd /
ll
sudo mkdir /data2
cd data2/
ll
ll /media/I3\\rhow/
ll /data/1/dd/streaming/airbus/imagery/
cp -R /data/1/dd/streaming/airbus/imagery/20141118/DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/ .
sudo cp -R /data/1/dd/streaming/airbus/imagery/20141118/DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/ .
ll
ag *.jp2
ag jp2
ll 
sudo ll DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/
sudo ls -l DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/
chmod -R 777 DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/
sudo chmod -R 777 DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/
ll
ag jp2
find / | ag -i jp2
find . | ag -i jp2
ll
emacs README.md
sudo emacs README.md
find . | ag -i xml
ll
hi cp
sudo cp -R /data/1/dd/streaming/airbus/imagery/20141118/DS_SPOT6_201403111037036_FR1_FR1_FR1_FR1_E000N45_07554 .
sudo ncdu
ll
cd /media/I3\\rhow/
ll
cd SP\ PHD\ U3
ll
cd airbus/imagery/
ncdu
hi submit
fg
g
fg
hi submit
cd /data
ll
ll /data2
cd /
ll
sudo mv data data_all_external_hd
ll
sudo mkdir -p /data/1/dd/streaming/
ll /data_all_external_hd/1/dd/streaming/
sudo mkdir -p /data/1/dd/streaming/airbus
sudo mkdir -p /data/1/dd/streaming/airbus/imagery/20141118/
cd /data/1/dd/streaming/airbus/imagery/20141118/
ll
ln -s /data2/DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/
sudo ln -s /data2/DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/
ll
ls /data/1/dd/streaming/airbus/imagery/20141118/DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/PROD_SPOT6_001/VOL_SPOT6_001_A/IMG_SPOT6_PMS_001_A/IMG_SPOT6_PMS_201409021042225_ORT_1114072101_R1C2.JP2
ll /data/1/dd/streaming/airbus/imagery/20141118/DS_SPOT6_201409021042225_FR1_FR1_FR1_FR1_W001N44_01871/PROD_SPOT6_001/VOL_SPOT6_001_A/IMG_SPOT6_PMS_001_A/IMG_SPOT6_PMS_201409021042225_ORT_1114072101_R1C2.JP2
hi submit
cd ~/projects-django/padawan-cache-management/misc/
ll
which python
service httpd reload
python submit-seeding-job.py 
htop
cd
cd Downloads/
ll
sudo apt-get install skype
sudo apt-get -f install
skype --version
sudo add-apt-repository ppa:pidgin-developers/ppa
sudo apt-get update
sudo apt-get install pidgin
pulseaudio &
cd
cat .i3/config 
cat .i3/config |less
cat .i3/i3status.conf |less
pulseaudio 
pulseaudio --help
cd git-repos/dotfiles/
ll
cd ..
cd
history | ag ln
ln -s git-repos/dotfiles/.screenlayout/
.screenlayout/dualscreen.sh
cd git-repos/
sudo apt-get install pulseaudio
cd dotfiles/
ll
rm .bash_aliases~
git status
less .bash.shellmarks 
ll 
ll .config/
sudo apt-get install terminator
terminator 
ll
git status
cd
ln -s git-repos/dotfiles/.config/terminator/
terminator
ll
rm terminator
rm .i3_orig/
rm -r .i3_orig/
ll
ln -s git-repos/dotfiles/.config/terminator/ .config/terminator
ll
ll .config/
rm .config/terminator 
ln -s ~/git-repos/dotfiles/.config/terminator/ .config/terminator
ll .config/
rm .config/terminator 
ln -s ~/git-repos/dotfiles/.config/terminator .config/terminator
ll .config/
terminator 
cd git-repos/dotfiles/
ll
git status
ll
cd 
ll
ln -s git-repos/dotfiles/.vimrc 
ll
cat .vimrc 
vi test
cd 
cd git-repos/dotfiles/
ll
cat install.sh 
ll
history | ag ln
vi install_links.sh 
cat .netextender 
git status
ll
./install-nathonw.sh 
cd
ll
ll .config
ll .purple/accounts.xml 
cat .purple/accounts.xml 
ll
ll git-repos/dotfiles/bin/
ll
exit
cd ~/git-repos/
cd dot
cd dotfiles/
vi notes.txt 
ll
cd /media/I3\\rhow/
ll
mount
ll
cd 6813d4af-d510-49f9-ac39-2b3f2eb18a10/
ll
cd home_rhow_20150927/
ll
cp -r .screenlayout/ ~/git-repos/dotfiles/
ll
find . | ag remmina
cat .remmina/remmina.pref 
cp -r .remmina/ ~
ll
ll .bash*
cp .bash_* ~/git-repos/dotfiles/
cp .bashrc ~/git-repos/dotfiles/
cp -r .config/terminator/ ~/git-repos/dotfiles/.config/
ll
cp .vimrc ~/git-repos/dotfiles/
ll git-repos/NathanWong_dotfiles/
ll git-repos/NathanWong_dotfiles/bin/
cat git-repos/NathanWong_dotfiles/.input
cat git-repos/NathanWong_dotfiles/.inputrc 
ll
ll .config/
cat git-repos/NathanWong_dotfiles/install.sh 
cp git-repos/NathanWong_dotfiles/install.sh ~/git-repos/dotfiles/install-nathonw.sh
ll 
ll | more
cat .netextender 
cat .netExtenderCerts/PUB_CERT/ca-bundle.crt 
cp .netextender ~/git-repos/dotfiles/
ll bin/
cp -r bin/ ~/git-repos/dotfiles/
exit
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
exit
