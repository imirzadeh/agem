ARCH='FC-S'
NUM_RUNS=1
BATCH_SIZE=10
OPTIM='SGD'
lr=0.03
lam=0.1
RESULTS_DIR='results/mnist'
python3 ./fc_permute_mnist.py --train-iters 5000 --examples-per-task 10000 --arch $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method 'A-GEM' --synap-stgth $lam --log-dir $RESULTS_DIR