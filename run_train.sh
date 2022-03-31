#!/bin/zsh

python tools/train.py configs/skeleton/swin/swin_base_patch244_window877_ntu120_xsub_keypoint.py \
                    #   --load_from trained_models/swin_base_patch244_window877_kinetics600_22k.pth
# --cfg-options model.backbone.pretrained=<PRETRAIN_MODEL> [model.backbone.use_checkpoint=True] [other optional arguments]