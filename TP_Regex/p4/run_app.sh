docker run --network=net-tp4 \
    --name=tp4-app -p 5000:5000 \
    -v $(pwd)/srv:/srv -d \
    im-tp4-b
