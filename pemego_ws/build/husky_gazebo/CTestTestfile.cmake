# CMake generated Testfile for 
# Source directory: /home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/src/husky/husky_gazebo
# Build directory: /home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/husky_gazebo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_husky_gazebo_roslaunch-check_launch "/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/husky_gazebo/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/husky_gazebo/test_results/husky_gazebo/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/husky_gazebo/test_results/husky_gazebo" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/build/husky_gazebo/test_results/husky_gazebo/roslaunch-check_launch.xml\" \"/home/loann/Bureau/ICPR/TP4/ICPR/pemego_ws/src/husky/husky_gazebo/launch\" ")
subdirs("gtest")
