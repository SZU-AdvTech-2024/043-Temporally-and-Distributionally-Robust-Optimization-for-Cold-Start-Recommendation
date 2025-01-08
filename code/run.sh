# nohup python -u main.py --model_name=$1 --data_path=$2 --batch_size=$3 --l_r=$4 --reg_weight=$5 --num_group=$6 --num_period=$7 --mu=$8 --eta=$9 --lam=${10} --split_mode=${11} --log_name=${12} --gpu=${13} >./log/${1}_${2}_${3}bs_${4}lr_${5}reg_${6}G_${7}E_${8}mu_${9}eta_${10}lam_${11}_${12}.txt 2>&1 &

python -u main.py --model_name TDRO --data_path amazon --batch_size 1000 --num_epoch 2 --l_r 0.001 --reg_weight 0.001 --num_group 5 --num_period 5 --mu 0.2 --eta 0.2 --lam 0.3 --split_mode global --log_name log --gpu 0

# sh run.sh TDRO amazon 1000 0.001 0.001 5 5 0.2 0.2 0.3 global log 0
TDRO_amazon_0.001lr_0.001reg_256ng_0.1con_0.5rou_0.1temp_128dimE_5G_5E_0.2mu_0.2eta_0.3lam_0.2p_global_log.pth