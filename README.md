# A Rotary Aquatic or Aerial Propeller Which Is Not a Screw

There are many ways to move through water. Nature has developed the jet (squids), thunniform swimming (cetaceans and tuna), carangiform swimming (trout and catfish), and whatever it is that octopuses and manatees and lobsters do.

Yet the rotary screw propeller remains the dominant way humans move most watercraft, whether staffed or, increasingly, unstaffed (autonomous.) Human being have motors which produce rotary power efficiently and controllably.

Yet the screw has the disadvantage that is unsafe to aquatic life (and swimming humans). Additionally, it may be susceptible to fouling with lines and weeds which wrap around it.
For this reason, autonomous aquatic vehicles often put the propeller in a duct or shroud, which limits direct contact 
with large objects. However, small objects and animals that can fit inside the duct are jeopardized by such propellers, in part because they tend to be drawn into them.

In addition to safety concerns, a new principle of aquatic motion is intellectually interesting apart from any actual 
advantage it may obtain. Based on a single experiment, we believe we have developed a novel means of producing aquatic
thrust which may be safer than screw-based propellers.

# The Unscrew Propeller

In November of 2022 I developed this idea and ordered three-d printed parts, which arrived in January 2023. After making a test apparatus, I was surprised that it seemed to actually work on the first try. 

The idea was to make a shape that was as little like a screw as possible. Inspired by the Coanda effect
and the fact that jets of rapidly moving fluid tend to stay in contact with objects that change shape slowly,
I imagined a rotating shape that would produce thrust by moving a stream of water axially to the rotation. 
Furthermore, I wanted the shape to have no sharp edges, but rather to be as close to globular as possible.
Of course, if you spin any shape in water, it will tend to impart a spin to the water. Spinning water is
subject to centrifugal force, yet also feels a force keeping it in contact with the object.
Thus the idea was to design a shape such that water spinning away from the object would have at least
some radial motion, and therefore thrust.

A cone would accomplish this, but in a way that is not obviously useful. Instead, we imagine a 
hemisphere, which is a good beginning of a hydrodynamic shape. By adding gentle "lobes" to this shape,
themselves roughly hemispheric, we could create a shape with no abrupt edges, but which would exert rotational
force on the water.

The resulting shape generated by the program GentlePropulsion.scad in this repo looks like this:
![Screen Shot 2023-01-29 at 5 33 58 PM](https://user-images.githubusercontent.com/5296671/215362352-fbff4d67-07c0-47a0-9120-3c9d9937424f.png)

If we think of the streamlines (the lines of flow) that this shape would naturally produce, it is clear
that water would be drawn away from the axial center at the "top" of the rounded hemisphere. This 
water would naturally be replaced by water in front of the object; this "pull" would exert a force
on the object.

A natural hydrodynamic shape is created by pairing a hemisphere with a cone to make an ice-cream 
cone shape. If this object were spun axially, it is unclear if the streams of water flowing away
from the top of the hemisphere would be moving more forcefully than the streams moving on the cone.
It appears from our experiment that they do---that these streams move "backward" enough to overcome
whatever force is on the cones, producing streamlines which in general move backward, producing a
thrust on the "ice cream cone" in the direction of the ice cream ball (and away from the cone.)

# Experiment

Building an experimental apparatus to measure the thrust produced by rotary propulsion mechanism is non-trivial.
Even more difficult is to measure the power efficiency of the "propeller", although in the end that is a very
interesting question. 
I designed an experiment to measure only if it provides a thrust at all.

I cut a long drill bit and glued it to the square wooden shaft that I had fitted into the unscrew propeller. 
Then I found a piece of styrofoam and duct-taped a battery-powered rotary drill to foam, creating a simple
boat, which a "propeller" shaft projecting down into the water with the unscrew propeller attached.

Then using a hot-tub, which is about 6 feet across, I zip-tied the trigger of the drill down and placed the boat
in the water. It appeared to move in the direction of the propeller with moderate force until it smacked into the 
"seat" of the hot tub. After being pulled back and moving forward three times, drill bit became unglued from the 
wooden shaft.


A [video of the experiment](https://youtube.com/shorts/lgh7gO7JHxQ) is avaible at our channel on YouTube.

![Screen Shot 2023-01-29 at 5 56 25 PM](https://user-images.githubusercontent.com/5296671/215363424-7c9254d9-e2df-47a0-98e2-966799cd4397.png)


# Possibility of use as a Turbine

[Christina Cole](https://github.com/christinacole)  suggested something I had not thought of---the possibility that this could be reversed to 
create a generator. This is strange because it is not clear which way it would spin. I thank her for this idea and it 
is definitely worth exploring. Nonetheless we imagine the unscrew provides the same propulsion (not reversed!) whether spinning 
clockwise or counter-clockwise. So a higher fluid flow would simply induce a high spin in the unscrew, whichever way it 
began spinning at the beginning, which might be mathematically determinant, just as a ballbearing will always fall off a marble,
but an ideal ball bearing place on an ideal marble does not mathematically fix the direction in which it will fall.

# A Risk

It is just barely possible, but unlikely that the propulsion observed only occured because it was tested in a closed vessel
(which support weird currents and reflections in ways that deep open water would not.) Testing in a larger pool
should eliminate this risk. I consider unlikely.

# Seeking Collaborators

As the Head Invention Coach of Public Invention, I am very busy. The goal of Public Invention is to in in the public---
that means you, gentle reader, are invited to collaborate. I would love for a mechanical engineer to assist me in
fully exploring this idea. A start would be to measure thrust as a function of rotational velocity.

No doubt the shape which I started with, which was easy to create in OpenSCAD, is not the optimal shape for this purpose.

Measuring the actual power efficiency of the unscrew propeller require measuring thrust at various speeds (via towing)
or a Computational Fluid Dynamics simulation. I am capable of learning CFD but have other priorities on my time.

This work would certainly produce a good academic paper.

Please write to <a href="mailto:read.robert@pubinv.org">read.robert@pubinv.org<a> if you would like to discuss this idea or volunteering for it.

# Potential Experimental Apparatus moving Forward

In general we would like to measure the [propulsive efficiency](https://en.wikipedia.org/wiki/Propulsive_efficiency) of the unscrew propeller. This is defined as the work done moving 
forward vs. the energy put into the rotation of the propeller. This is quite difficult to measure. 
For a start, it means the apparatus must travel, or the water moved by the apparatus must travel and be measured. 

A simpler approach
is simply to measure the force produced as a function of rpm and compare that to, for example, a different design.
This approach at least allows thrust to be measured against rpm; but rpm by itself cannot be equated to force or work,
because the resistanc of an object to being spun varies wildly.

We need assistance from a mechanical engineer who can design an effective experiment for measuring the propulsive efficiency of the unscrew propeller. [This reference](https://heliciel.com/en/helice/calcul-helice-aile/rendement-helice-propulsive.htm) may be useful.

It is possible that we would have to build a pipe, place a propeller in the pipe, submerge the entire pipe in water, and
then measure the massflow and velocity of the water through the pipe, if we can regularize the flow at exhaust, so that each part 
of the water is traveling the same velocity. The Kinetic power imparted to the stream is thus 0.5 * Mass flow * speed ^2. We can 
treat the downstream flow as zero, unless we are moving the entire pipe through the water (which might indeed change the Kinetic Power,
since we know that screws will change their power as the blade angle is tuned to velocity of the flow.

We could then measure the actual work we do on the unscrew. Ideally this would be done by measuring torque and the number of rotations,
but we could approximate it by measuring the product of voltage and amperage when driving an efficient electric motor.

However, the simplest way to measure it may be to purchase a cheap 12V trolling motor, and "hack" it to accept an unscrew in place of a 
screw. This could then be mounted on a rented canoe and velocity measured in actual water. The amperage consumed by the motor might
be slighly different and would have to be measured. However, you could then directly compare an unscrew to a screw. If we assume
a screw is about as efficient as it can be, we can then judge an unscrew. We could qualitatively judge it to be "about as good as screw",
"significantly less efficient than a screw" or "really, really bad compared to a screw."

Since the unscrew's actual geometry was only my first guess as to a working system, there may be a lot of room for improvement in
the design, number, depth, and shape of the "lobes".

# What if the Unscrew is much less efficent than a Screw?

If the unscrew is less efficient than a screw, than it would not be useful for most applications of actual transport (that is, shipping or boating.) 
However, there may still be applications in which an unscrew is preferred, such as assuring the safety of whales.

# How would you actually use it?

The Unscrew could be mounted onto an outboard motor very much like a screw is (note the unscrew propels in the direction off the lobes).
But more interesting would be to make a very large, relatively slowly turning unscrew the actual prow of a ship, submarine, or torpedo.
The "cone" would then be replaced with the hull of the craft itself. This could drastically increase the efficiency of the total design. 
(It would in some cases produce a torque on the craft itself, which could be countered by a keel, fin, or counter-rotating force which
need not produce forward propulsion.)

# How do you back up?

Uhh...

You can't. You have to point the whole thing around. Onlike a boat screw which can (inefficiently) be simply rotate backwared to make the boat slowly move backward or to retard its velocity, you just can't do that with an unscrew.

# Aerial Applications

The Unscrew should work essentially the same way in air or any other fluid. In fact, I originally though of this idea in an attempt to make safer flight.
A large Unscrew could serve as a passive parachute (if the "cone" part opened or collapsed). Thus you could have powered flight, but if 
power failed, the machine would float gently to the ground on its inherent parachute.

I believe we could test by taking a standard quadcopter drown and replacing the propellers with unscrew propellers.

An additional way to test it would be to make two counter rotating unscrews with an axis between them on a smooth rod. 
The two unscrews would each have their own motor. The assembly would be free to move up and down the rod.  We would then measure the weight of the 
test apparatus with the unscrews still and the unscrews turning.  Such a rig would be useful for testing different variations in the 
unscrew design, which could be 3D printed.
  
  Such a rig could be used without motors with free-spinning unscrews to the test the hypothesis that would rotate with some force if placed 
  in a wind or moving fluid stream (even though which direction they would start is not determined by their geometry).
  
To make a very light-weight unscrew, we could sew the hemispherical shapes out of silk, attach them to ballons to hold their shape, and paint
  them with brush-on epoxy.
Or, we could 3D print very light geodesic domes as a framework covered with fabric.








# License

This text is licensed under Creative Commons By Attribution. The Hardware Designs herein are licensed under the CERN OHL Strongly Reciprocal V2.  The OpenSCAD code is licensed under Affero GPL v. 3.
