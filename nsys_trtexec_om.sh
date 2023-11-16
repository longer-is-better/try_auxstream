# nsys \
#  profile \
#   -t cuda,cudnn,osrt,nvtx \
#   --gpuctxsw=true \
#   --gpu-metrics-device=all \
#   --cuda-graph-trace=node \
#   -w true -f true \
#   -o b0926v06127qat_last_AS4 \
 /usr/src/tensorrt/bin/trtexec \
  --useSpinWait \
  --warmUp=1000 \
  --duration=0 \
  --iterations=10000 \
  --loadEngine=b0926v06127qat_last_AS16.trt \
  --best \
  --plugins=plugins/Linux-x86_64/lib/libbev_pool_v2.so \
  --plugins=plugins/Linux-x86_64/lib/libgrid_sample.so \
  --plugins=plugins/Linux-x86_64/lib/libmulti_scale_deformable_attn.so \
  --loadInputs=img:one_model_io/img.bin,feat2bev:one_model_io/feat2bev.bin,feat2bev_inverse:one_model_io/feat2bev_inverse.bin,interval_lengths:one_model_io/interval_lengths.bin,interval_starts:one_model_io/interval_starts.bin,l02l1:one_model_io/l02l1.bin,mlp_input:one_model_io/mlp_input.bin,pre_feat:one_model_io/pre_feat.bin,ranks_bev:one_model_io/ranks_bev.bin,ranks_depth:one_model_io/ranks_depth.bin,ranks_feat:one_model_io/ranks_feat.bin \
  --exportProfile=./b0926v06127qat_last_profile.json \
  --exportLayerInfo=./b0926v06127qat_last_layer.json \
  --profilingVerbosity=detailed \
  --separateProfileRun \
  --memPoolSize=workspace:10240 \
  --useCudaGraph
  # -t cuda,cudnn,osrt,nvtx,tegra-accelerators \
  # --accelerator-trace=tegra-accelerators \
  #--useDLACore=0 \
  #--allowGPUFallback
