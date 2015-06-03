---
title: Planning using the Vortex physics engine
author: mmoll
---
OMPL can be used to plan for complex systems that can be simulated by a physics engine. From a planning perspective, the physics engine is a black box that acts like a <a href="http://ompl.kavrakilab.org/classompl_1_1control_1_1StatePropagator.html">state propagator</a>. OMPL includes support for the <a href="http://ode.org">Open Dynamics Engine (OpenDE)</a>, but support for other physics engines can be added using the OpenDE bindings as a starting point.
To show that this can indeed be done, I have developed bindings for <a href="http://www.vxsim.com/">Vortex</a>. <a href="http://www.vxsim.com/">Vortex</a> is a commercial physics simulator. It contains incredibly detailed models for vehicles (transmission, gears, suspension, etc.) and surface interactions. It also has snazzy OpenSceneGraphics built in. The bindings mirror the structure of the OpenDE bindings. To use these bindings, the user has to implement some derived classes. The derived VortexEnvironment class needs to define the simulated environment and how controls map forces, torques or velocities in the simulation. The derived state space is responsible for defining a distance between states. Interestingly, the VortexStateSpace represents states completely opaquely: the dimensionality is unknown and the internal structure is unknown. There is just a distance function and a user-defined projection to a low-dimensional embedding. This is sufficient for planners like KPIECE, SBL, and EST (but not RRT, which needs to be able to sample uniformly random states). I have attached a patch for OMPL 0.10.2 that adds vortex support. You can also download and extract the tar file which adds the Vortex-related files and overwrites a few files to add Vortex support.

Below is a simple demo program (included in the patch and tar file) that illustrates very basic usage of the Vortex support. In this demo the objective is to push a box from a starting position to a desired goal region. Once a solution is found, it uses the Vortex graphics capabilities to play back the path.

<iframe src="{{site.url}}/files/VortexRigidBodyPlanning_8cpp_source.html" width="100%" height="480px" scrolling="yes">
</iframe>

The inputs do not need to correspond to forces or torques. They can also be inputs to a controller. For example, if you want to plan for a VxVehicle, you could have function that maps OMPL controls to the simulator like so:

{% highlight c++ %}
virtual void applyControl(const double *control) const
{
    double throttle = control[0], steering=control[1];
    if (throttle>=0)
        vehicle->getEngine()->setInputThrottle(throttle);
    else
        vehicle->setBrakeInput(throttle,throttle);
    vehicle->setSteeringInput(steering);
}
{% endhighlight %}

The attached code has only been lightly tested, but if you find it useful or end up extending it, please let us know.

## Download:

[[patch-vortex.diff]]({{site.url}}files/patch-vortex.diff.gz)
[[vortex.tar]]({{site.url}}files/vortex.tar.gz)
