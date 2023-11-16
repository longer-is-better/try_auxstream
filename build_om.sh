/usr/src/tensorrt/bin/trtexec \
 --onnx=b0926v06127qat_last.onnx \
 --saveEngine=b0926v06127qat_last_ASdefault.trt \
 --best \
 --plugins=plugins/Linux-x86_64/lib/libbev_pool_v2.so \
 --plugins=plugins/Linux-x86_64/lib/libgrid_sample.so \
 --plugins=plugins/Linux-x86_64/lib/libmulti_scale_deformable_attn.so
#  --loadInputs=img:one_model_io/img.bin,feat2bev:one_model_io/feat2bev.bin,feat2bev_inverse:one_model_io/feat2bev_inverse.bin,interval_lengths:one_model_io/interval_lengths.bin,interval_starts:one_model_io/interval_starts.bin,l02l1:one_model_io/l02l1.bin,mlp_input:one_model_io/mlp_input.bin,pre_feat:one_model_io/pre_feat.bin,ranks_bev:one_model_io/ranks_bev.bin,ranks_depth:one_model_io/ranks_depth.bin,ranks_feat:one_model_io/ranks_feat.bin \
#  --exportProfile=./b0926v06127qat_last_29bb0_aarch64_best_2022-03-16-23-52_profile.json \
#  --exportLayerInfo=./b0926v06127qat_last_29bb0_aarch64_best_2022-03-16-23-52_layer.json \
#  --useCudaGraph \
#  --useDLACore=0 \
#  --allowGPUFallback
