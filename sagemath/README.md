podman run -it --name sage888 --rm -p8888:8888  --user 0 -v /home/username/sage:/home/sage/notebooks:Z sagemath sage-jupyter --allow-root
