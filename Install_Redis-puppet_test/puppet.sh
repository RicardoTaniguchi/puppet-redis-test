#!/bin/bash


sudo apt install -y puppet
puppet apply ./manifest/redis.pp

