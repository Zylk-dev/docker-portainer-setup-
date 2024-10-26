#!/bin/bash
echo "🐧 Pulling and running Debian container..."
sudo docker pull debian:latest
sudo docker run -it --name debian-base debian:latest
run_parrot.sh

#!/bin/bash
echo "🎭 Pulling and running Parrot Security container..."
sudo docker pull parrotsec/core
sudo docker run -it --name parrot-env parrotsec/core
run_alpine1.sh

#!/bin/bash
echo "⛰️ Pulling and running Alpine container 1..."
sudo docker pull alpine:latest
sudo docker run -it --name alpine-lite1 alpine:latest
run_alpine2.sh

#!/bin/bash
echo "⛰️ Pulling and running Alpine container 2..."
sudo docker pull alpine:latest
sudo docker run -it --name alpine-lite2 alpine:latest
