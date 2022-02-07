#!/bin/bash

sudo apt update -y
sudo apt install -y puppet
puppet apply ./manifest/redis.pp

