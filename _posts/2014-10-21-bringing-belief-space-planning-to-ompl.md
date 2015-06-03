---
title: Bringing Belief Space Planning to OMPL
author: sagarwal
---
**Editor's note: this is a guest post by Saurav Agarwal from Texas A&amp;M.**

Sampling based deterministic motion planning has shown great success in the past. However, as we progress towards more realistic modeling and planning for robotic systems, we need to account for uncertainties in our systems. Uncertainties mainly arise from:

1. Sensing or measurement noise (also called observation noise) i.e. sensors do not give perfect measurements, instead the measurements are corrupted by some noises
2. Motion uncertainty (also called process noise) i.e. the robot&rsquo;s actuators make some errors in following the control commands
3. Modelling uncertainties i.e. our physical models of the system and environment usually have approximations/errors.

Thus, all these uncertainties call for a new class of motion planners, planners that can reason about the uncertainty in the system and then make smart (optimal) decisions.

In the absence of the exact state of the system due to sensing uncertainty, the robot forms a probability distribution over all possible states (referred to as a belief) and the planning and decision making has to happen based on the available belief of the system. However, motion planning in the belief space is a challenging problem due to the computational intractability of its exact solution (it can be classified as a Partially Observable Markov Decision Process). This problem becomes even more challenging in changing environments as the robot needs to reason not only about its own state but about external disturbances such as moving people and unforeseen obstacles (furniture, doors etc.).

Research conducted at Texas A&amp;M University and recently joint work with MIT has resulted in an innovative solution called FIRM (Feedback-based Information Roadmaps) that is able to transform the intractable POMDP problem to a graph based structure in belief space. FIRM essentially constructs a roadmap graph in belief space and is able to generate feedback policies and give guarantees on the minimum success probability for a planning task. FIRM generates a policy that is able to guide the robot through paths that minimize the localization uncertainty and collision probabilities. Thus, FIRM provides motion plans that are able to deal with uncertainties in our systems. Further, FIRM is also capable of dynamic replanning in real-time to deal with unforeseen changes in the environment and robot&rsquo;s state (kidnapping).

We have successfully applied this method in simulation and on real physical robots and demonstrated its robustness in realistic scenarios. Here is a video that shows FIRM running on an IRobot Create that is tasked with visiting multiple goal locations sequentially in an everyday office environment. The goal points are not predefined and submitted by user online. Notice that there are people walking, doors are opened and closed randomly and the robot is kidnapped to unknown locations. Our robot is able to handle all these challenges and accomplish its mission!

{% youtube 6cKzcfVDes8 %}

We presented our work at ICRA 2014, Hong Kong and you can find all related papers here: <a href="http://www.mit.edu/~aliagha/Web/publications.htm">http://www.mit.edu/~aliagha/Web/publications.htm</a>

Further, we are now linking FIRM with OMPL. You can currently download a working simulation of the FIRM graph construction and plan execution from <a href="https://github.com/sauravag/FIRM-OMPL">https://github.com/sauravag/FIRM-OMPL</a>

The code is provided as a Code::Blocks project, feel free to play with it and give us your feedback!

Saurav Agarwal  
Ph.D. Candidate  
Aerospace Engineering  
Texas A&amp;M University  
Research Web:&nbsp;<a href="http://edplab.org/" target="_blank">http://edplab.org</a>  
Personal:&nbsp;<a href="http://sauravag.com/" target="_blank">http://sauravag.com</a>  
