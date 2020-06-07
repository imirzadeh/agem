# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved
#
#! /bin/bash

IMP_METHOD='A-GEM'
NUM_RUNS=1
BATCH_SIZE=16
EPS_MEM_BATCH_SIZE=16
MEM_SIZE=1
LOG_DIR='results/'
lr=0.1
ARCH='FC-S'
OPTIM='SGD'

python3 ./fc_permute_mnist.py --random-seed 1215 --decay 0.3 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'A-GEM' --log-dir $LOG_DIR
python3 ./fc_permute_mnist.py --random-seed 1215 --decay 0.3 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'ER' --log-dir $LOG_DIR

# python conv_split_cifar.py --train-single-epoch --cross-validate-mode --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --learning-rate 0.1 --imp-method $IMP_METHOD --synap-stgth 0 --log-dir $LOG_DIR --mem-size $MEM_SIZE --eps-mem-batch $EPS_MEM_BATCH_SIZE


