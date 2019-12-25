#!/bin/bash

#需先skill autossh（ps -aut|grep 6777)
autossh -p 22 -M 6777 -NR 2233:localhost:22 ubuntu@106.53.66.65
