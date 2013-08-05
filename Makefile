# CARLsim Makefile
# CARLsim available from http://socsci.uci.edu/~jkrichma/CARLsim/
# Ver 07/13/2013

# source files of the sim core
SOURCES = snn_cpu.cpp mtrand.cpp PropagatedSpikeBuffer.cpp printSNNInfo.cpp gpu_random.cu snn_gpu.cu

colorblind: ${SOURCES} examples/colorblind/main_colorblind.cpp v1ColorME.cu
	nvcc -I${NVIDIA_SDK}/C/common/inc/ -L${NVIDIA_SDK}/C/lib -lcutil -arch sm_13 ${SOURCES} examples/colorblind/main_colorblind.cpp v1ColorME.cu -o colorblind

colorcycle: ${SOURCES} examples/colorcycle/main_colorcycle.cpp v1ColorME.cu
	nvcc -I${NVIDIA_SDK}/C/common/inc/ -L${NVIDIA_SDK}/C/lib -lcutil -arch sm_13 ${SOURCES} examples/colorcycle/main_colorcycle.cpp v1ColorME.cu -o colorcycle

orientation: ${SOURCES} examples/orientation/main_orientation.cpp v1ColorME.cu
	nvcc -I${NVIDIA_SDK}/C/common/inc/ -L${NVIDIA_SDK}/C/lib -lcutil -arch sm_13 ${SOURCES} examples/orientation/main_orientation.cpp v1ColorME.cu -o orientation

random: ${SOURCES} examples/random/main_random.cpp v1ColorME.cu
	nvcc -I${NVIDIA_SDK}/C/common/inc/ -L${NVIDIA_SDK}/C/lib -lcutil -arch sm_13 ${SOURCES} examples/random/main_random.cpp v1ColorME.cu -o random

rdk: ${SOURCES} examples/rdk/main_rdk.cpp v1ColorME.cu
	nvcc -I${NVIDIA_SDK}/C/common/inc/ -L${NVIDIA_SDK}/C/lib -lcutil -arch sm_13 ${SOURCES} examples/rdk/main_rdk.cpp v1ColorME.cu -o rdk

v1MTLIP: ${SOURCES} examples/v1MTLIP/main_v1MTLIP.cpp v1ColorME.cu
	nvcc -I${NVIDIA_SDK}/C/common/inc/ -L${NVIDIA_SDK}/C/lib -lcutil -arch sm_13 ${SOURCES} examples/v1MTLIP/main_v1MTLIP.cpp v1ColorME.cu -o v1MTLIP

v1v4PFC: ${SOURCES} examples/v1v4PFC/main_v1v4PFC.cpp v1ColorME.cu
	nvcc -I${NVIDIA_SDK}/C/common/inc/ -L${NVIDIA_SDK}/C/lib -lcutil -arch sm_13 ${SOURCES} examples/v1v4PFC/main_v1v4PFC.cpp v1ColorME.cu -o v1v4PFC