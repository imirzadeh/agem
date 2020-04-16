ARCH='FC-S'
NUM_RUNS=1
BATCH_SIZE=64
EPS_MEM_BATCH_SIZE=64

METHOD='ER-Ring'
OPTIM='SGD'
lr=0.03
lam=0.1
LOG_DIR='results/mnist-perm-20tasks-50k'
if [ ! -d $LOG_DIR ]; then
    mkdir -pv $LOG_DIR
fi

python3 hal_mnist.py --train-single-epoch --cross-validate-mode --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --learning-rate 0.1 --imp-method $METHOD --synap-stgth 0.0 --log-dir $LOG_DIR --mem-size 1 --examples-per-task 10000 --eps-mem-batch $EPS_MEM_BATCH_SIZE --anchor-eta 0.1