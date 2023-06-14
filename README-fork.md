We adapt the code in the repository to support training models without adversarial training.

You can launch the docker container with the following command:
```
docker run \
    -v /home/ttw-local/DM-Improves-AT/:/code \
    -v /storage/projects/miax/:/storage/projects/miax \
    --gpus '"device=2"' \
    -it tonytwang/miax:dm-imp-at \
    bash
```
