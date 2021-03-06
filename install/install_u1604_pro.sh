#ROS installation
: << !
ROS-Kinetic version for ubuntu 16.04.
There are many different libraries and tools in ROS.
We provided the full configurations to set our environment.
!
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list';
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116;
sudo apt-get update;
sudo apt-get install -y ros-kinetic-desktop-full;
sudo rosdep init;
sudo rosdep update;
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc;
source ~/.bashrc;

#PCL
: << !
The Point Cloud Library (or PCL) is a large scale,
open project for 2D/3D image and point cloud processing.
PCL-1.8.0 is provided for ubuntu 14.04.
Ps: The library of this version is important for our ros package.
!
mkdir build;
wget https://github.com/PointCloudLibrary/pcl/archive/pcl-1.8.0.tar.gz
cd ./build;
tar -zvxf pcl-1.8.0.tar.gz;
cd ./pcl-pcl-1.8.0 && mkdir build && cd build;
cmake ../;
make && sudo make install;
cd ../../../;
rm -rf build;

#EIGEN
sudo apt-get install -y libeigen3-dev;
sudo ln -s /usr/include/eigen3/Eigen /usr/include/Eigen;

#XML
sudo apt-get install -y libxml2-dev;
sudo ln -s /usr/include/libxml2/libxml /usr/include/libxml;
