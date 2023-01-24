#!/bin/bash

xhost +

docker run -it --rm --privileged --net=host \
--volume $(pwd)/VINS-Fusion:/catkin_ws/src/VINS-Fusion \
--volume $(pwd)/livox_ros_driver:/catkin_ws/src/livox_ros_driver \
-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
ghcr.io/rosblox/ros-vins-fusion:noetic


