# Jupyter

Some configuration in jupyter

1. jupyter notebook

   `pip install jupyter notebook`

    generate config file: 

   `jupyter notebook --generate-config`

    get into python shell, set jupyter's remote login password:

    ```
    from notebook.auth import passwd
    passwd()
    ```

    and then copy the password.

    Next, modify the jupyter configuration file:

   `cat ./notebook.txt >>  $HOME/.jupyter/jupyter_notebook_config.py`

    change *c.NotebookApp.password = ''* with previous password.

    then create a new tmux windows to run jupyter notebook

    ```
    tmux new -t jnotebook
    jupyter notebook
    ```

    [optional] add new kernel
    `pip install ipython`
    `python -m ipykernel install --user --name dl39`


2. jupyter lab

   `pip install jupyterlab`

   `jupyter lab --generate-config`

   `cat ./lab.txt >>  $HOME/.jupyter/jupyter_lab_config.py`

   password see 1. jupyter notebook

   [optional] extensions: https://zhuanlan.zhihu.com/p/556433254

