#!/bin/bash

echo "install apache"
sudo apt-get update > /dev/null 2>&1
sudo apt-get install -y apache2 > /dev/null 2>&1
