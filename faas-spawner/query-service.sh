#!/bin/bash
curl http://localhost:8080/service/hello-world \
-H 'content-type: application/json; charset=utf-8' \
-d '{"firstName":"Bob","lastName":"Morane"}'