-- jaco_rl

off by one in first iteration? 

plot all eval

bootstrap / prior

save .py files

reload some parameters - including fence / exp name for testing

document fence, robot interaction

add capsule into frame

change load_path.pt to load_base_path

add steps to replay_buffer

-- dm_control:

add target position return in to env creation

penalize collisions with itself

take out hardcoded debug 7s and make compatible with 6dof again (also fix 6dof xml)

-- ros_interface

ctrl-c isnt working server

switch to using json for msg passing



# NOTES
- don't add capsules to the xml file ! they mess up physics


