#!/bin/bash
#
# run_attack.sh is a script which executes the attack
#
# Envoronment which runs attacks and defences calls it in a following way:
#   run_attack.sh INPUT_DIR OUTPUT_DIR MAX_EPSILON
# where:
#   INPUT_DIR - directory with input PNG images
#   OUTPUT_DIR - directory where adversarial images should be written
#   MAX_EPSILON - maximum allowed L_{\infty} norm of adversarial perturbation
#

#INPUT_DIR=$1
#OUTPUT_DIR=$2
#MAX_EPSILON=$3
INPUT_DIR='/tmp/nips17/imgs/'
OUTPUT_DIR='/tmp/nips17/adv_imgs/'
MAX_EPSILON=$1

python attack_gan.py \
  --input_dir="${INPUT_DIR}" \
  --output_dir="${OUTPUT_DIR}" \
  --max_epsilon="${MAX_EPSILON}" \
  --checkpoint_path=/tmp/nips17/inception_v3.ckpt
