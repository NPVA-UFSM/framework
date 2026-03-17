#!/bin/bash
set -e

# Source ROS2 base setup
source /opt/ros/humble/setup.bash

# Source workspace overlay if it has been built
if [ -f /ros2_ws/install/setup.bash ]; then
    source /ros2_ws/install/setup.bash
fi

exec "$@"
