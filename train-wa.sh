#!/bin/bash

python train-wa.py \
    --data-dir 'cifar-data' \
    --log-dir '/storage/projects/miax/dm-imp-at/trained-models' \
    --desc 'WRN28-10-nat-e100' \
    --data cifar10s \
    --batch-size 196 \
    --batch-size-validation 196 \
    --model wrn-28-10-swish \
    --num-adv-epochs 100 \
    --lr 0.2 \
    --beta 5.0 \
    --unsup-fraction 0.8 \
    --aux-data-filename '/storage/projects/miax/dm-imp-at/edm_data/cifar10/20m.npz' \
    --ls 0.1 \
    --no-adv \
    --seed 0
