---
title: ICRA 2012 / ROSCON update
author: mmoll
---
It was good meeting many of the OMPL users at ICRA 2012 and ROSCON a couple weeks ago. There were a number of ICRA talks that featured OMPL, directly or indirectly, that I'd like to point out:

#### *Towards Small Asymptotically Near-Optimal Roadmaps,* by James D. Marble and Kostas E. Bekris

This work shows how to construct provably near-optimal roadmaps that are a fraction of the size of roadmaps constructed with kPRM* (an algorithm in OMPL that converges to optimal roadmaps). A small roadmap makes retrieval of paths much faster. With a bit of smoothing added, near-optimal paths get even closer to optimal. We expect that the algorithm described in this paper will become part of OMPL in the near future.

#### *Real-time footstep planning for humanoid robots among 3D obstacles using a hybrid bounding box,* by Nicolas Perrin, Olivier Stasse, Florent Lamiraux , Young J. Kim and Dinesh Manocha

This paper describes a footstep planning algorithm that does not simply reduce the problem to a 2D problem (as is often done), but allows the robot to step over obstacles if necessary. Although we didn't design OMPL specifically for this application, the authors mention that OMPL provides exactly the interface they needed. Neat!

#### *A Robot Path Planning Framework that Learns from Experience,* by Dmitry Berenson, Pieter Abbeel, and Ken Goldberg

This paper describes an algorithm that does the following two things in parallel when given a motion planning query as input: (1) plan from scratch, and (2) deform/extend a path for a similar motion planning query that was solved previously to satisfy the current query. Whichever finishes first terminates the other process. New paths are added to a path library, so that over time very little planning from scratch will have to be done. The initial implementation might have been done in OpenRAVE (I think), but has since been implemented using OMPL and ROS. See the <a href="http://sourceforge.net/p/lightningros/wiki/Home/">Lightning Planning Framework for ROS</a>.

#### *FCL: A General Purpose Library for Proximity and Collision Queries,* by Jia Pan, Sachin Chitta, and Dinesh Manocha

This is only indirectly related to OMPL. OMPL.app can use FCL for collision checking, and FCL is already used in ROS together with OMPL. There is a lot more that can be done with FCL in the context of motion planning. The proximity to obstacles could be exploited to create a more intelligent configuration sampler.

If you use OMPL in your work, please let me know.

At ROSCON, Sachin Chitta and Ioan Sucan gave a talk about MoveIt!, the new motion planning stack in ROS. It provides a common interface to motion planning libraries in ROS (including OMPL). It will eventually replace the arm navigation stack. Watch the whole talk:

{% youtube r1zbuLc8RhI 16by9 %}
