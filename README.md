# bootstrap-grid-h
#Bootstrap responsive squares and rectangles

It is a pretty simple and very useful responsive squares extension to bootstrap. 

##Dependencies

Bootstrap

##Syntax

Usage syntax is similar to bootstrap syntax: `h, h-xs-1, h-sm-12`, etc.
There should be always present bootstrap `col-...` classes in order to create responsive rectangle

**Important**
If you need to create rectangles, do not use h class in conjuction with h-... classes.

##Examples

###Create responsive square

Simply add class h to the bootstrap `col-...` class, for example

`<div class="col-xs-1 h"></div>`
`<div class="col-xs-4 col-sm-3 col-md-2 h"></div>`

This will create responsive square for the screens covered by col classes
 
###Create responsive rectangle

Here you have to specify span (row count) for each required screen. For example:

`<div class="col-xs-1 h-xs-1 h-sm-2"></div>`

Will create square for XS screen and tall rectangle (1:2) for SM and larger screens

`<div class="col-xs-1 col-sm-2 h-xs-1 h-sm-3 h-md-4"></div>`

Will create square for XS screen, rectangle with ration 2:3 for SM screen; and rectangle with ratio 1:2 (2:4) for MD and larger screen  

**Important**
When creating rectangles, h-xs-... class should be present, otherwise no height will apply on XS screen 

