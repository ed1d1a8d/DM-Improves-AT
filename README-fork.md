We adapt the code in the repository to support training models without adversarial training.

## Commands
```
python train-wa.py \
    --data-dir 'cifar-data' \
    --log-dir 'trained_models' \
    --desc 'WRN28-10-nat' \
    --data cifar10s \
    --batch-size 2048 \
    --model wrn-28-10-swish \
    --num-adv-epochs 2400 \
    --lr 0.2 \
    --beta 5.0 \
    --unsup-fraction 0.8 \
    --aux-data-filename 'edm_data/cifar10/20m.npz' \
    --ls 0.1 \
    --no-adv
```
