---
title: or_ompl &mdash; OpenRAVE bindings for OMPL
author: mkoval
---
**A guest post from <a href="http://mkoval.org">Michael Koval</a> at CMU:**

The Personal Robotics Lab at CMU is excited to announce or_ompl, an OpenRAVE planner plugin that provides bindings for OMPL. This short video outlines several key features of the plugin:

{% youtube 6qRRbvNzHG8 %}

In summary, or_ompl enables you to:

- Plan in OpenRAVE using the full suite of OMPL geometric motion planners
- Call OMPL's optimal motion planners, like BIT\*, PRM\*, and RRT\*, in an anytime fashion
- Shortcut trajectories using OMPL's geometric path simplifier
- Easily expose new OMPL motion planners to OpenRAVE

The source code is BSD licensed and available on Github:

<a href="https://github.com/personalrobotics/or_ompl">https://github.com/personalrobotics/or_ompl</a>

See the README for installation and usage instructions. Please do not hesitate to open an issue or pull request on Github if you have any issues.
