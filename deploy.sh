sudo apt install nginx
sudo cp boilerplate/flask_app /etc/nginx/sites-enabled/flask_app
sudo cp boilerplate/.bash_profile ~/.bash_profile
sudo unlink /etc/nginx/sites-enabled/default
sudo nginx -s reload
sudo apt install python3
sudo apt install python3-pip
pip3 install -r requirements.txt
sudo apt install gunicorn3
sudo apt install tmux
pip install notebook
pip3 install jupyterlab
jupyter notebook --generate-config
sudo cp boilerplate/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
source ~/.bash_profile
tmux new-session -s lab -d 'jupyter lab \
  --port=8080 \
  --NotebookApp.port_retries=0 \
  --allow-root'
tmux new-session -s prod -d "gunicorn3 --workers=3 --bind 0.0.0.0:8000 --timeout 60000 routes:app"'

