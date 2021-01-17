pip install --upgrade pip
# jupyterlabは2系をインストールすること
# 3系はまだ未対応なextensionが多い
pip install "jupyterlab<3"
# Node.jsの導入(バージョンは適宜修正してください)
# $ brew install node

# Jupyter Widgets JupyterLab Extension
# https://github.com/jupyter-widgets/ipywidgets/tree/master/packages/jupyterlab-manager
jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build

# git
# https://github.com/jupyterlab/jupyterlab-git
jupyter labextension install @jupyterlab/git
pip install jupyterlab-git
# pip install "jupyterlab-git==0.23.3"
jupyter serverextension enable --py jupyterlab_git

# formatter
# https://github.com/ryantam626/jupyterlab_code_formatter
pip install black isort
# pip install jupyterlab_code_formatter
pip install "jupyterlab_code_formatter<1.4"
# pip install "jupyterlab-code-formatter==1.3.8"
jupyter labextension install @ryantam626/jupyterlab_code_formatter
jupyter serverextension enable --py jupyterlab_code_formatter
# to activate, see: https://jupyterlab-code-formatter.readthedocs.io/en/latest/how-to-use.html#changing-default-formatter


# ipywidgets
# tqdmなどで要求されるので基本入れておくのが良い
# https://github.com/jupyter-widgets/ipywidgets/tree/master/packages/jupyterlab-manager#version-compatibility
jupyter labextension install @jupyter-widgets/jupyterlab-manager@2.0 --no-build

# Variable Inspector
# https://github.com/lckr/jupyterlab-variableInspector
jupyter labextension install @lckr/jupyterlab_variableinspector --no-build

# File tree
# https://github.com/youngthejames/jupyterlab_filetree
jupyter labextension install jupyterlab_filetree --no-build

# Table of Contents
# https://github.com/jupyterlab/jupyterlab-toc
# jump markdown sharp
jupyter labextension install @jupyterlab/toc --no-build

# vim
# https://github.com/axelfahy/jupyterlab-vim
jupyter labextension install @axlair/jupyterlab_vim --no-build

# shortcut ui
# https://github.com/jupyterlab/jupyterlab-shortcutui
jupyter labextension install @jupyterlab/shortcutui --no-build

# jump to definition
# https://github.com/krassowski/jupyterlab-go-to-definition
jupyter labextension install @krassowski/jupyterlab_go_to_definition --no-build

# resource check
# https://github.com/rapidsai/jupyterlab-nvdashboard
pip install jupyterlab-nvdashboard
# pip install "jupyterlab-nvdashboard==0.4.0"
jupyter labextension install jupyterlab-nvdashboard --no-build

# Highlight Selected Word
# https://github.com/jcb91/jupyter_highlight_selected_word
# jupyterlabに未対応(?)

# flake8
# https://github.com/mlshapiro/jupyterlab-flake8
pip install flake8
jupyter labextension install jupyterlab-flake8 --no-build


# AI powered code completion
# https://github.com/kiteco/jupyterlab-kite
# 事前にOSに応じた方法で、kiteをinstallすること。参考: https://www.kite.com/
# ubuntu
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)" 
pip install "jupyter-kite<2.0.0"
# pip install "jupyter-kite==1.2.0"
jupyter labextension install @kiteco/jupyterlab-kite --no-build

# spell checker
# https://github.com/ijmbarr/jupyterlab_spellchecker
# jupyter labextension install @ijmbarr/jupyterlab_spellchecker

jupyter lab build