#!/bin/bash

sudo apt install -y puppet
puppet apply ./redis.pp

