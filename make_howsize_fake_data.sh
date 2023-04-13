#how much GB
DATA_SIZE=${1}
echo "nake fake data size : "${DATA_SIZE} " GB"

rm -rf 1M_data
for((i=0;i<1024*1024;i++))
do
    echo -n "a" >> 1M_data
done

rm -rf 1G_data_dir
mkdir 1G_data_dir

for((i=0;i<1024;i++))
do
    cp 1M_data ./1G_data_dir/${i}
done
rm -rf fake_data_dir
mkdir fake_data_dir

for((i=0;i<${DATA_SIZE};i++))
do
    cp -r ./1G_data_dir ./fake_data_dir/${i}
done

rm -rf 1G_data_dir
rm -rf 1M_data
