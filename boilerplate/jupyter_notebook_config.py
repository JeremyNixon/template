c = get_config()  #noqa


c.NotebookApp.allow_origin = '*'
c.NotebookApp.ip = '0.0.0.0'

c.NotebookApp.token = ''
c.NotebookApp.password = 'template'
