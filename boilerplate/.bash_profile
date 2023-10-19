alias lab="cd /home/template
lsof -ti tcp:8080 | xargs kill -9
tmux new-session -s lab -d 'jupyter lab \
  --port=8080 \
  --NotebookApp.port_retries=0 \
  --allow-root'"

alias prod='cd /home/template
lsof -ti tcp:8000 | xargs kill -9
tmux new-session -s prod -d "gunicorn3 --workers=3 --bind 0.0.0.0:8000 --timeout 60000 routes:app"'

