# CPU

docker build . --target sagemaker -f Dockerfile -t docker.jfrog.booking.com/projects/ferecommend/custom_tei_cpu_sm:1.3.0

# GPU
docker build . --target sagemaker -f Dockerfile-cuda-all --build-arg CUDA_COMPUTE_CAP=86 --build-arg CARGO_BUILD_INCREMENTAL=true --build-arg RAYON_NUM_THREADS=3 -t docker.jfrog.booking.com/projects/ferecommend/custom_tei_gpu:1.2.0