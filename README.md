# Bash

Some bash scripts in linux

1. Git Configure

   replace `username` and `email` with your name and email

   `git config --global user.name "username"`

   `git config --global user.email "email"`

   `ssh-keygen -t rsa -C "pc name or email"`

   upload `cat $HOME/.ssh/id_rsa.pub` to github **ssh and gpg keys**

   test `ssh git@github.com`

   and then copy the `public key` of the local host to the `authorized_keys` file of the remote host
   `ssh-copy-id -i ~/.ssh/id_rsa.pub user@server`

2. conda config

   ```
   echo 'export PATH=$PATH:$HOME/anaconda3/bin' >> $HOME/.bashrc
   source $HOME/.bashrc
   conda init
   conda create -n dl39 python=3.9
   conda activate dl39
   
   conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
   conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
   conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
   ```

3. pip config

   ```
   mkdir -p $HOME/.pip/
   cat ./pip.txt > $HOME/.pip/pip.conf
   ```

4. torch install

   cuda version depends on specific machine

   ```
   pip install torch torchvision --extra-index-url https://download.pytorch.org/whl/cu116
   ```

5. pyg dgl install

   ```
   #!/bin/bash
   TORCH=$(python -c "import torch; version = torch.__version__.split('+'); print(f'{version[0]}')")
   CUDA=$(python -c "import torch; version = torch.__version__.split('+'); print(f'{version[1]}')")
   pip install torch-scatter -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
   pip install torch-sparse -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
   pip install torch-cluster -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
   pip install torch-spline-conv -f https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html --upgrade
   pip install torch-geometric --upgrade
   
   pip install dgl-${CUDA} dglgo -f https://data.dgl.ai/wheels/repo.html
   ```


6. (optional) change shell to zsh
    
    ```
    cat zsh.txt > $HOME/.zshrc
    mkdir -p $HOME/download/zsh
    cd $HOME/download/zsh
    git clone https://gitclone.com/github.com/zsh-users/zsh-autosuggestions.git
    git clone https://gitclone.com/github.com/wting/autojump.git
    cd autojump
    ./install.py
    source $HOME/.zhsrc
    chsh -s /bin/zsh
    ```


# How to run

#### Step 1: Git Configure

#### Step 2: `git clone git@github.com:downeykking/Bash.git`

#### Step 3: 

`cd Bash`

`bash all.sh`

- conda_config.sh
- pip_config.sh
- torch_install.sh
- pyg_dgl_install.sh
- (optional) zsh.sh