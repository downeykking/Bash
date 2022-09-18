#!/bin/bash
TORCH=$(python -c "import torch; version = torch.__version__.split('+'); print(f'{version[0]}')")
CUDA=$(python -c "import torch; version = torch.__version__.split('+'); print(f'{version[1]}')")
pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
pip install torch-geometric --upgrade
