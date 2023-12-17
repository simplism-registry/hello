# hello


docker run \
-p 8080:8080 \
-v $(pwd):/app \
--rm k33g/simplism:0.0.7 \
/simplism listen ./app/say_hello.wasm handle --http-port 8080 --log-level info --wasm-url https://github.com/simplism-registry/say-hello/releases/download/v0.0.0/say_hello.wasm


docker run \
-p 8080:8080 \
-v $(pwd):/app \
--rm k33g/simplism:0.0.7 \
/simplism listen ./app/say_hello.wasm handle --http-port 8080 --log-level info --wasm-url https://github.com/simplism-registry/say-hello/releases/download/v0.0.0/say_hello.wasm