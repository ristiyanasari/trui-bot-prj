#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <math.h>

#define _USE_MATH_DEFINES

int main(int argc, char** argv){
  ros::init(argc, argv, "kinect_tf_broadcaster");
  ros::NodeHandle nh;

  tf::TransformBroadcaster br;
  tf::Transform transform;
  int i = 0;
  ros::Rate rate(100.0);
  while (nh.ok()){
    if(i < 360) {
      i++;
    }
    else i = 1;

    transform.setOrigin( tf::Vector3(0.0, 0.0, 0.5) );
    transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", "base_link"));

    transform.setOrigin( tf::Vector3(0.0, -0.3, -0.5) );
    transform.setRotation(tf::createQuaternionFromRPY(0,-(90*M_PI/180),0));
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "camera_black_link"));
    
    transform.setOrigin( tf::Vector3(0.0, 0.3, -0.5) );
    transform.setRotation(tf::createQuaternionFromRPY(0,-(90*M_PI/180),0));
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "camera_white_link"));
    rate.sleep();

  }
  return 0;
};