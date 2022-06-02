<p align="center"><img src="https://user-images.githubusercontent.com/93825166/171623805-cc5c1532-dd40-497c-b396-f2fc0426c131.gif" width="250" height"250"/></p>

# Interactive-Trigonometry-Animation
A program visually demonstrating the function of cos and sin while creating an appealing configurable animation, to prove that oscillation is the projection of uniform circular motion on the diameter of the circle.

# Project Hosted on OpenProcessing
<p> Click here:     
<a href="https://openprocessing.org/sketch/1590752">
	<img src="https://cdn-images-1.medium.com/max/220/1*qzzrgBZUbIjqtsNVEJnm9Q@2x.png" width="45" height"45"/><p/>
</a>

# Abstract
This report describes the development of the program behind a mathematical animation 
visually representing the motion of cos and sin within simple harmonic motion which also 
proves that oscillation is the projection of uniform circular motion on the diameter of the 
circle. The program creates an interactable and configurable arrangement of circles that 
create a strange phenomenon displayed by the animation. The aim of this program is to help 
students understand the trigonometry side of mathematics, while creating visually appealing 
graphics. Many factors can be adjusted by the user to change speed, colour, and the amount 
values. This report includes testing possible outputs of the program and explanations behind 
the outcomes.

# Introduction
Many people assume that trigonometry, as the name itself implies, has all to do with triangles. In 
fact, while that is of course also true, there is more to trigonometry than that. Visualizing 
trigonometrical properties in circular functions form can create a better understanding of the 
subject, which is the purpose of what this report/project aims to do
  
# Research
The unit circle stands out as a key component of this project
and is the base of most calculations applied. While the ball moves in uniform circular motion
on the diameter, the projections of y and x connecting the ball create a 90-degree angle
(where “t” is a multiple of π).
  
<p align="center"><img src="https://user-images.githubusercontent.com/93825166/171650682-f3d4f739-e55d-499d-9d40-594bd0696b43.png" width="450" height"250"/></p>

<strong>No object in the whole animation moves in a circle.</strong> 
Through this statement I realised that simple harmonic motion oscillations must be used to 
achieve the result desired. Hence, my oscillation in simple harmonic motion code has 
been introduced in the form of pseudocode shown below.

``` javascript
float x = amplitude * cos ( slowly incrementing value );
```

# Technical background and Problem Statement
The basic idea behind the working of the motion is, no matter the number of balls present in 
the animation, the offset between them must create an order in which each ball touches the 
circumference of the outer circle exactly where a uniformly circulating object is present.
The vertical and horizontal projections of these points always create a right angle on the
circumference of the circle.

<p align="center"><img src="https://user-images.githubusercontent.com/93825166/171654069-2663a4c4-aa7c-48f7-87dc-2f02ed67640f.png" width="300" height"250"/></p>

A demonstration of this can be found when the animation is first run and “ENTER” is pressed 
to arrange the 2 balls. Every time either the x-axis or y-axis ball touches the circumference, 
the uniformly circulating blue ball meets it.

The formula for updating the position (creating motion) of “x” and “y”:

``` javascript
x = (amplitude * cos ( angle + (increment) * change ));
y = (amplitude * cos ( angle + (increment) * change ));
// where, amplitude is size of oscillation, increment is amount of points, change is offset between each point
```

A problem appeared when drawing additional balls. To easily add balls, both variables had to 
be updated at the same time, dividing them into 2 sections, the “vertical” and “horizontal”.
This would add extra code.

Another big issue with the program was accepting infinite values for inputs. This defeats the 
purpose of the code and can potentially harm the performance.
  
# Solution
After an amount of time, many vital factors have been discovered to work around issues 
found in the code. The most informative factor that changed the way the program worked is 
using radians instead of degrees. The realisation that the program needed radian values 
solved many problems, like finding the offset between balls. This was found with the value of (PI/Amount of Balls).

``` java
float change = PI / balls;
```

The problem of drawing additional balls
was avoided by removing the “y” variable 
completely as the x-axis with
continuously updated angle values was all 
that is needed to create the desired 
animation. This works because it simply 
rotates the X-axis to an extent that also 
covers the Y-axis positions.

The issue with accepting infinite values 
was fixed by implementing a cap for 
input. This cap was set to reasonable 
values that do not break the purpose but 
also values big enough to test the 
program to its full capabilities

``` javascript
  if (balls < 0) { balls = 0; }
//to make sure the value of balls does not go below 0
  if (balls > 300) { balls = 300; }
//to make sure the value of balls does not go above 300
  if (velocity < -0.3) { velocity = -0.3; }
//to make sure the value of velocity does not go below -0.3
  if (velocity > .3) { velocity = .3; }
//to make sure the value of velocity does not go above 0.3
```

# Conclusion

A program has been successfully created that works as intended with all the requirements
necessary. The animation is smooth and adjustable as stated above, with interchangeable
colours, speed, and amount values. The code could be extended furtherly to be more visually
appealing and additional features added for pre-sets of animations or individually coloured
balls.
