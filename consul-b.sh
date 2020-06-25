#!/bin/bash
docker run -d --name consul-server --network=host -v /root/consul/data:/consul/data -v /root/consul/config:/consul/config consul:1.7 agent -server -ui -bind=<your server B IP> -client=0.0.0.0 -join=<your server A IP>