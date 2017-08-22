Disclaimer
==========

<h3>These scripts are my own and have not been check by any security expert or anyone related to the IOTA Foundation, the IOTA core team or anybody else directly belonging with these entities or IOTA itself.</h3>
<h3>These entities and persons do not condone nor reject this content, as they have no relation whatsoever with it or me, other than the fact that I'm a community member that supports IOTA.</h3>
<h3>Under no circumstance should anyone contact the IOTA Foundation, IOTA core team or anybody else but me on any issues you find or want to discuss - you may do that by submitting an issue on this repository at any time.</h3>



IOTA Scripts
============

**Some useful scripts  for IOTA and Tangle operations**

Most will be in powershell, some on node.js and/or mixed between the two

As a windows user, I really love powershell and it allowed me to get started with linux without going deep in bash :-)

Coments on the script indicate if it's .Net / Windows dependent or if it's .Net core / linux compatible.

You can install powershell in linux or mac by following the instructions over at https://github.com/PowerShell/PowerShell


List so far:

**``SecureIOTASeedGenerator.ps1``** - generates as many seeds as you want, using the secure, cryptografic functions in .net

**this script does not have the known issue of Get-random, as it uses a cryptographic-strong RNG, but use at your own discretion**

