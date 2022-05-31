# Interactive-Trigonometry-Animation
A program visually demonstrating the function of cos and sin while creating an appealing configurable animation, to prove that oscillation is the projection of uniform circular motion on the diameter of the circle.

<img src="https://user-images.githubusercontent.com/93825166/171161536-0ef353db-b8ac-4787-a2a8-3d71cdc18e00.gif" width="350" height="375"/>

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

# Intro
Many people assume that trigonometry, as the name itself implies, has all to do with triangles. In 
fact, while that is of course also true, there is more to trigonometry than that. Visualizing 
trigonometrical properties in circular functions form can create a better understanding of the 
subject, which is the purpose of what this report/project aims to do

# Technical background and Problem Statement
The basic idea behind the working of the motion is, no matter the number of balls present in 
the animation, the offset between them must create an order in which each ball touches the 
circumference of the outer circle exactly where a uniformly circulating object is present.

A demonstration of this can be found when the animation is first run and “ENTER” is pressed 
to arrange the 2 balls. Every time either the x-axis or y-axis ball touches the circumference, 
the uniformly circulating blue ball meets it.

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
