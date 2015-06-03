---
title: MoveIt! Release
author: mmoll
---
(Reposted from the <a href="http://www.willowgarage.com/blog/2013/05/06/moveit">Willow Garage blog</a>)

{% youtube vAeEEoxVhAo 16by9 %}


<img src="http://moveit.ros.org/wordpress/wp-content/uploads/2014/01/moveit-title-small.png" alt="moveit logo">

**UPDATE: the <a href="http://people.willowgarage.com/sachinc/talks/ROSCON_2013/">slides</a> and <a href="https://vimeo.com/66567049">video</a> of the MoveIt! presentation at <a href="http://roscon.ros.org/2013">ROSCON 2013</a> have now been posted**

Willow Garage is proud to announce the initial release of MoveIt! : new software targeted at allowing you to build advanced applications integrating motion planning, kinematics, collision checking with grasping, manipulation, navigation, perception, and control. MoveIt! is robot agnostic software that can be quickly set up with your robot if a URDF representation of the robot is available. The MoveIt! Setup Assistant lets you configure MoveIt! for any robot, allowing you to visualize and interact with the robot model.

MoveIt! can incorporate both actual sensor data and simulated models to build an environment representation. Sensor information (3D) can be automatically integrated realtime in the representation of the world that MoveIt! maintains. CAD models can also be imported in the same world representation if desired. Collision-free motion planning, execution and monitoring are core capabilities that MoveIt! provides for any robot. MoveIt! updates its representation of the environment on the fly, enabling reactive motion planning and execution, which is essential for applications in human-robot collaborative environments.

MoveIt! interfaces with controllers through a standard ROS interface, allowing for ease of inter-operability, i.e. the ability to use the same higher-level software with a variety of robots without needing to change code. MoveIt! is architected to be flexible, using a plugin architecture to allow users to integrate their own custom components while still providing out-of-the-box functionality using default implementations. Furthermore, the ROS communication and configuration layer of MoveIt! is separated from core computational components such as motion planning or collision checking, the latter components being provided separately as C++ libraries.

Workspace analysis tools allow robot designers to test out the capabilities of their robot designs before building the hardware, using environment and object specific task specifications to quantify the workspace characteristics of different designs. This reduces costly mistakes and iterations in the design stage. We are actively working on completing the pick and place capabilities in MoveIt!, integrating with object recognition, perception, and grasping to allow manipulators to execute generalized pick and place actions.

**Get MoveIt!**

More Information about MoveIt!, including instructions on how to get and use it, can be found on the <a target="_blank" title="http://moveit.ros.org" href="http://moveit.ros.org">MoveIt! website</a>. MoveIt! is currently an alpha release.

**Catch the MoveIt! team at ICRA 2013 and ROSCON:**

- <i>ICRA Booth Demo</i>: The Willow Garage Booth will have a MoveIt! demo as part of the exhibit. The booth is open on Tuesday, Wednesday and Thursday (May 7-9, 2013).
- <i>ICRA Workshop Talk</i>: Sachin Chitta is giving a talk on "MoveIt!: Software for Rapid Development of New Robotics Applications" at the ICRA Industrial Mobile Assistance Robots Workshop on Monday, May 6, 2013.
- <i>ICRA Tutorial</i>: MoveIt! will be presented at a tutorial on Friday May 10, 2013: <a href="http://moveit.ros.org/wiki/index.php/Tutorials/ICRA2013">Motion Planning for Mobile Manipulation: State-of-the-art Methods and Tools</a>, organized by Sachin Chitta, Ioan Sucan, Mark Moll, Lydia Kavraki and Maxim Likhachev.
- <i>ROSCON Keynote Talk</i>: Sachin Chitta, Ioan Sucan and Acorn Pooley will be at ROSCON presenting MoveIt! at 9:30 AM on Saturday May 10, 2013.

**Acknowledgements**

Willow Garage gratefully acknowledges the contributions of the following people to MoveIt! and associated packages that MoveIt! uses and depends on:

- Lydia Kavraki, Mark Moll, and associated members of the <a target="_blank" title="http://www.kavrakilab.org" href="http://www.kavrakilab.org">Kavraki Lab</a> (Rice University) for developing OMPL - a suite of randomized planners that MoveIt! uses extensively.
- Dinesh Manocha and Jia Pan of <a target="_blank" title="http://unc.edu" href="http://unc.edu">UNC Chapel Hill</a> for developing FCL - a package of collision checking algorithm used extensively by MoveIt!
- Maxim Likhachev (<a target="_blank" title="http://www.ri.cmu.edu" href="http://www.ri.cmu.edu">CMU</a>), Ben Cohen (<a target="_blank" title="https://www.grasp.upenn.edu" href="https://www.grasp.upenn.edu">Penn</a>) and Mike Phillips (<a target="_blank" title="http://www.ri.cmu.edu" href="/">CMU</a>) for developing <a target="_blank" title="http://www.ros.org/wiki/sbpl" href="http://www.ros.org/wiki/sbpl">SBPL</a>, a search-based planning library integrated with MoveIt!
- Armin Hornung, Kai Wurm, Maren Bennewitz, Cyril Stachniss, and Wolfram Burgard for developing <a title="http://www.ros.org/wiki/octomap" href="http://www.ros.org/wiki/octomap">Octomap</a> - software for 3D occupancy mapping used by MoveIt!
- Mrinal Kalakrishnan, Peter Pastor and Stefan Schaal at <a target="_blank" title="http://robotics.usc.edu" href="http://robotics.usc.edu">USC</a> for developing <a target="_blank" title="http://www.ros.org/wiki/Papers/ICRA2011_Kalakrishnan" href="http://www.ros.org/wiki/Papers/ICRA2011_Kalakrishnan">STOMP</a>, the distance field components in MoveIt! and the implementation of the <a target="_blank" title="http://www.ros.org/wiki/chomp_motion_planner" href="http://www.ros.org/wiki/chomp_motion_planner">CHOMP</a> algorithm in Arm Navigation
- Dave Coleman from the <a target="_blank" title="http://www.colorado.edu" href="http://www.colorado.edu">University of Colorado, Boulder</a> for developing the MoveIt! Setup Assistant and adding documentation to the MoveIt! website.

MoveIt! evolved from the Arm Navigation and Grasping Pipeline components of ROS and we gratefully acknowledge the seminal contributions of all developers and researchers to those packages, especially Edward Gil Jones, Matei Ciocarlie, Kaijen Hsiao, Adam Leeper, and Ken Anderson.

We also acknowledge the contributions of the Willow Garage interns who have worked on MoveIt!, Arm Navigation and associated components, members of the ROS and PR2 communities who have used, provided feedback and provided contributions to MoveIt! and Arm Navigation and members of the ROS community for developing the infrastructure that MoveIt! builds on.

We also acknowledge the contributions of the ROS-Industrial consortium led by the Southwest Research Institute for supporting and building up infrastructure for applying MoveIt! and Arm Navigation to industrial robots and environments. Similarly, we acknowledge the contributions of <a target="_blank" title="http://www.ipa.fraunhofer.de/index.php?L=2" href="http://www.ipa.fraunhofer.de/index.php?L=2">Fraunhofer IPA</a> to MoveIt! and support for the ROS-Industrial effort in Europe.

For more information visit <a target="_blank" title="moveit.ros.org" href="/moveit.ros.org">moveit.ros.org</a>
