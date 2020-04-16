ARCH='FC-S'
NUM_RUNS=1
BATCH_SIZE=64
EPS_MEM_BATCH_SIZE=64

# METHOD='ER-Ring'
OPTIM='SGD'
lr=0.1
lam=0.1
LOG_DIR='results/mnist-rot-20tasks-50k'
if [ ! -d $LOG_DIR ]; then
    mkdir -pv $LOG_DIR
fi

python3 hal_mnist.py --train-single-epoch --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --learning-rate 0.1 --imp-method VAN --synap-stgth 0.0 --log-dir $LOG_DIR --mem-size 1 --examples-per-task 50000 --eps-mem-batch $EPS_MEM_BATCH_SIZE --anchor-eta 0.1
python3 hal_mnist.py --train-single-epoch --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --learning-rate 0.1 --imp-method ER-Ring --synap-stgth 0.0 --log-dir $LOG_DIR --mem-size 1 --examples-per-task 10000 --eps-mem-batch $EPS_MEM_BATCH_SIZE --anchor-eta 0.1