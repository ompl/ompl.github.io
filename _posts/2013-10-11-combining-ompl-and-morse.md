---
title: Combining OMPL and MORSE
author: cvoss
---
The <a href="http://www.openrobots.org/wiki/morse/">Modular OpenRobots Simulation Engine</a> (MORSE) is an environment that allows the user or other code to direct a robot in a physics simulation. The program is built on the 3D modeling software, <a href="http://www.blender.org/">Blender</a>, which can be used to design and animate simulation scenarios. We saw an opportunity to enhance both the functionality of MORSE and the user accessibility of OMPL by combining the two of them, thus enabling the modeling, solving, and animating of a planning problem from the same interface.

A user of OMPL may wish to work with a problem where the motion of one or more robots and its environment are governed by the physics of the system and input controls to the robot(s). For example, suppose the user has a car-like robot, for which a desired velocity and turning speed can be specified, in an environment where the robot and other objects can collide and be pushed around. Previously, to plan a path in a problem like this, one could build a model of the environment through the use of primitive geometric objects and joints in the Open Dynamics Engine (ODE), and then invoke the OMPL interface for ODE to find a solution. Encoding such a model is tedious work and error-prone, as the user must visualize what all the vertex coordinates and joint relationships are describing. After OMPL provides a path, the user may wish to animate it, which requires supplying a rendering engine to draw the objects.

There is a more natural method of modeling a path planning problem that is less time-consuming and easily scalable to larger, more complicated systems. By introducing MORSE and the Blender modeling environment to OMPL, we have made utilizing the library more accessible and desirable to those who would rather not spend so much time and effort upfront on the modeling of their problems. MORSE is designed to facilitate the simulation of robot motion in dynamic environments using Blender's physics engine and renderer. Entirely encapsulated in the MORSE/Blender workflow is the ability to construct environments and introduce robots from the MORSE library, complete with physical attributes like mass, friction, and joints with other objects, and then to simulate the system based on control inputs. We have designed an interface for OMPL to supply these inputs, thereby directing the simulation in order to solve a path planning problem.

This interface is in the form of a Blender add-on that supplies a number of useful functions, allowing the entire process to take place in the same workspace, without any tedious coding. First, in defining the problem, there are functions to link MORSE robots into the environment, set up bounds on the control inputs, and define goal positions for objects in the environment. The user then presses a button to start planning, after which the solution path is saved to disk in a concise format. Saved paths may be played back for review; at this time, frame-by-frame animation data is generated in the Blender file format. Finally, the user can dress up the scene in this file, tweak the results, and use the full extent of Blender's rendering capabilities to create a high-quality animation of the solution. Refer to the <a title="usage tutorial" href="http://ompl.kavrakilab.org/morse.html" target="_blank">usage tutorial</a> for a detailed description of how to utilize our Blender add-on.

Our method allows the planning for these systems to take place on a prototype of the scene with simple models, since we can substitute and add fancier models for the rendering after the solution is saved. Here are some demonstration videos of the end result of this process:

This first video illustrates a problem in which the goal is defined by the location of an object other than the robot. The green box must be pushed onto the red 'X'. In order to reach the box, OMPL must discover how to drive the car off the ramp quickly enough to make it to the other side.

{% vimeo 71580831 16by9 %}

The second video shows a simple puzzle involving two robots that must coordinate movements in a specific order so they can swap places, since the red ball is impeding any attempts to merely drive straight for the goal. The blue robot must first push the ball past the intersection to get it out of the way before the two robots may exchange places.

{% vimeo 72710651 16by9 %}

We hope you enjoy!
