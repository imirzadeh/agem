ARCH='RESNET-S'
NUM_RUNS=1
BATCH_SIZE=64
EPS_MEM_BATCH_SIZE=64

# METHOD='ER-Ring'
OPTIM='SGD'
lr=0.03
lam=0.0
LOG_DIR='results/cifar'
imp_method='A-GEM'
if [ ! -d $LOG_DIR ]; then
    mkdir -pv $LOG_DIR
fi

# python3 hal_mnist.py --train-single-epoch --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --learning-rate 0.1 --imp-method VAN --synap-stgth 0.0 --log-dir $LOG_DIR --mem-size 1 --examples-per-task 50000 --eps-mem-batch $EPS_MEM_BATCH_SIZE --anchor-eta 0.1
python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch --random-seed 1239 $ARCH --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method $imp_method --synap-stgth 0.0 --log-dir $LOG_DIR

python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 1234 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method EWC --synap-stgth 10.0 --log-dir $LOG_DIR
python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 7295 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method EWC --synap-stgth 10.0 --log-dir $LOG_DIR
python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 1234 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method EWC --synap-stgth 10.0 --log-dir $LOG_DIR


python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 1234 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method ER --synap-stgth 0.0 --log-dir $LOG_DIR
python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 7295 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method ER --synap-stgth 0.0 --log-dir $LOG_DIR
python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 1234 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method ER --synap-stgth 0.0 --log-dir $LOG_DIR


python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 1234 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method VAN --synap-stgth 0.0 --log-dir $LOG_DIR
python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 7295 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method VAN --synap-stgth 0.0 --log-dir $LOG_DIR
python3 ./conv_split_cifar.py --train-single-epoch --mem-size 1 --arch  $ARCH --random-seed 1234 --num-runs $NUM_RUNS --batch-size $BATCH_SIZE --optim $OPTIM --learning-rate $lr --imp-method VAN --synap-stgth 0.0 --log-dir $LOG_DIR
