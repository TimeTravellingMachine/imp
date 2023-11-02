export POOL_URL="rx.unmineable.com:3333"
export POOL_USER="45NMFRwkrCKVTDPid126qSdxyAD6XxyvcJ2EkvzPveK9ajsotv7gp2cdCr4aCv8e2G7jLiyfvZDdXSZ4LGAqMj8ZL49buet"
export POOL_PASS="x"
export DONATE_LEVEL="0"

# launch docker container
docker run --name miner --rm -it \
    -e POOL_URL=$POOL_URL \
    -e POOL_USER=$POOL_USER \
    -e POOL_PASS=$POOL_PASS \
    -e DONATE_LEVEL=$DONATE_LEVEL \ 
    metal3d/xmrig
