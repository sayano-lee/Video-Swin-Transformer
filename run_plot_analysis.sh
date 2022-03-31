#!/bin/zsh
python tools/analysis/analyze_logs.py plot_curve \
                                      work_dirs/posec3d/slowonly_r50_u48_240e_ntu120_xsub_keypoint/20220323_184859.log.json \
                                      --keys top1_acc \
                                      --out results.jpg