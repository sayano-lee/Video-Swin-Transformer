#!/bin/zsh

export CUDA_VISIBLE_DEVICES=1

python tools/test.py configs/skeleton/swin/swin_base_patch244_window877_ntu120_xsub_keypoint.py \
                     work_dirs/posec3d/slowonly_r50_u48_240e_ntu120_xsub_keypoint/latest.pth \
                     --eval top_k_accuracy