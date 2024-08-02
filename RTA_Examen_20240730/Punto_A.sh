sudo fdisk /dev/sdc
sudo fdisk /dev/sdd 
sudo fdisk /dev/sde
sudo pvcreate /dev/sdc1 /dev/sdd1 /dev/sde1
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
sudo wipefs -a /dev/sde1
sudo wipefs -a /dev/sdd1
sudo pvcreate /dev/sdd1 /dev/sde1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdd1
sudo vgcreate vg_temp /dev/sdc2
sudo lvcreate -L 10M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_multimedia vg_datos
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkdir -p /var/lib/docker
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mkfs.ext4 /dev/vg_datos/lv_multimedia
sudo mkdir -p /Multimedia
sudo mount /dev/vg_datos/lv_multimedia /Multimedia
sudo pvcreate /dev/sdc2
sudo vgcreate vg_temp /dev/sdc2
sudo lvcreate -L 1.70G -n lv_swap vg_temp
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
sudo vim /usr/local/bin/Alfredo_Greco_check_URL.sh
