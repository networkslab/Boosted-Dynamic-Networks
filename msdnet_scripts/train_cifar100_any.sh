#!/bin/bash

curr_dir="$( cd "$(dirname "$0")" ; pwd -P )"
train_id="exp0_msdge_cifar10_any"
result_dir=$"/home/joud/code/relu_analysis/Boosted-Dynamic-Networks/results/boostnet$train_id"
mkdir -p $result_dir

python3 ../train_cifar100.py \
    --data-root /home/joud/code/relu_analysis/Boosted-Dynamic-Networks/data/cifar10 \
    --dataset cifar10 \
    --result_dir $result_dir \
    --arch msdnet_ge \
    --ensemble_reweight 0.5 \
    --batch-size 64 \
    --nBlocks 10 \
    --stepmode even \
    --step 2 \
    --base 4 \
    --nChannels 16 \
    --workers 16 \
    --lr_f 0.1 \
    --lr_milestones '150,225' \
    --epochs 300 \
    --weight-decay 1e-4