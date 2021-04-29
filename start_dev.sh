#!/usr/bin/env bash

docker run --gpus all \
	-p 8892:8888 \
	--mount type=bind,source="${LAYERJOT_HOME}/ljcv-markers",target=/layerjot/ljcv-markers \
	--mount type=bind,source="${LAYERJOT_HOME}/ljcv-notebooks",target=/layerjot/ljcv-notebooks \
	--mount type=bind,source="${LAYERJOT_HOME}/ljcv-models",target=/layerjot/ljcv-models \
	--mount type=bind,source="${LAYERJOT_HOME}/ljcv-serving",target=/layerjot/ljcv-serving \
	--mount type=bind,source="${LAYERJOT_HOME}/secrets",target=/layerjot/secrets \
	--mount type=bind,source="/media/layerjot/data",target=/layerjot/data \
	--rm --ipc=host -it odtk:ljcv bash
