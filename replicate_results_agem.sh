# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved
#
#! /bin/bash

IMP_METHOD='A-GEM'
NUM_RUNS=1
BATCH_SIZE=16
EPS_MEM_BATCH_SIZE=16
MEM_SIZE=1
LOG_DIR='results/naive'
lr=0.1
ARCH='FC-S'
OPTIM='SGD'
lambda=10

python3 ./fc_permute_mnist.py --random-seed 1417 --decay 0.90 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'A-GEM' --log-dir $LOG_DIR
python3 ./fc_permute_mnist.py --random-seed 1417 --decay 0.65 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'A-GEM' --log-dir $LOG_DIR
python3 ./fc_permute_mnist.py --random-seed 1417 --decay 0.65 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate 0.15 --imp-method 'A-GEM' --log-dir $LOG_DIR
python3 ./fc_permute_mnist.py --random-seed 1417 --decay 0.90 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate 0.05 --imp-method 'A-GEM' --log-dir $LOG_DIR

python3 ./fc_permute_mnist.py --random-seed 1355 --decay 0.90 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'A-GEM' --log-dir $LOG_DIR
python3 ./fc_permute_mnist.py --random-seed 1355 --decay 0.65 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'A-GEM' --log-dir $LOG_DIR
python3 ./fc_permute_mnist.py --random-seed 1355 --decay 0.65 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate 0.15 --imp-method 'A-GEM' --log-dir $LOG_DIR
python3 ./fc_permute_mnist.py --random-seed 1355 --decay 0.90 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate 0.05 --imp-method 'A-GEM' --log-dir $LOG_DIR


# python3 ./fc_permute_mnist.py --random-seed 1315 --decay 0.90 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'ER' --log-dir $LOG_DIR
# python3 ./fc_permute_mnist.py --random-seed 1315 --decay 0.65 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'ER' --log-dir $LOG_DIR
# python3 ./fc_permute_mnist.py --random-seed 1315 --decay 0.65 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate 0.15 --imp-method 'ER' --log-dir $LOG_DIR


# python3 ./fc_permute_mnist.py --random-seed 2912 --decay 0.75 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'A-GEM' --log-dir $LOG_DIR
# python3 ./fc_permute_mnist.py --random-seed 2912 --decay 0.75 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'ER' --log-dir $LOG_DIR

# python3 ./fc_permute_mnist.py --random-seed 3114 --decay 1.0 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'ER' --log-dir $LOG_DIR
# python3 ./fc_permute_mnist.py --random-seed 3114 --decay 1.0 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'ER' --log-dir $LOG_DIR

# python3 ./fc_permute_mnist.py --random-seed 1234 --decay 0.75 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'EWC' --synap-stgth $lambda --log-dir $LOG_DIR
# python3 ./fc_permute_mnist.py --random-seed 4567 --decay 0.75 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'EWC' --synap-stgth $lambda --log-dir $LOG_DIR
# python3 ./fc_permute_mnist.py --random-seed 3114 --decay 0.75 --examples-per-task 50000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'EWC' --synap-stgth $lambda --log-dir $LOG_DIR