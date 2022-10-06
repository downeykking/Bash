echo 'export PATH=$PATH:$HOME/anaconda3/bin' >> $HOME/.bashrc
source $HOME/.bashrc
conda init
conda create -n dl39 python=3.9
conda activate dl39

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/

