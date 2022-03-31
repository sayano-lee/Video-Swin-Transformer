#!/bin/zsh

CONFIG='configs/skeleton/swin/swin_base_patch244_window877_ntu120_xsub_keypoint.py'
CHECKPOINT='work_dirs/posec3d/slowonly_r50_u48_240e_ntu120_xsub_keypoint/latest.pth'
GPUS=2
PORT=${PORT:-29500}

# export CUDA_VISIBLE_DEVICES=1

# python tools/test.py configs/skeleton/swin/swin_base_patch244_window877_ntu120_xsub_keypoint.py \
#                      work_dirs/posec3d/slowonly_r50_u48_240e_ntu120_xsub_keypoint/latest.pth \
#                      --eval top_k_accuracy

# PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
# Arguments starting from the forth one are captured by ${@:4}
python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT tools/test.py $CONFIG $CHECKPOINT \
                                   --launcher pytorch ${@:4} \
                                   --eval top_k_accuracy