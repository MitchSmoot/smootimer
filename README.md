# Cube Timer App

This will be a web application to facilitate progress tracking for speedcubing (or can be adapted to any timed sport really). Each user will have their times connected to their account, so that all of their times are saved so that improvement can be tracked over time. The Timer layout will contain, obviously, a timer, most likely written in Angular, which will be used to create the data on the spot. On that same page, There will be a scatterplot chart representing their submitted times over a period of time. Each point can be moused over to show details about that particular solve, including the exact solve time, the date/time of the solve, and possibly the scramble that was used for that solve. Users will also have the ability to compare their charts to that of other users, by overlaying their data sets on onto the same chart but in different colors.



## Layouts
1. HomePage
  + Must look attractive to new users, employers
  + contains a summary of the application's functions
  + Nav bar to access the other layouts
  + Basically a fancy HTML page. nothing too crazy

2. Timer
  + a nav or option tab to select an event to be timed.
  + A spacebar-activated timer to create each data point.
  + a chart showing a scatterplot of all times from selected event Could make use of angular-chart.js or Highcharts 
    + Ability to select a friend to compare times with. This will plot their times onto your chart, but in a different color. If possible, comparison with multiple users
    + If possible, A running average of 12 line going through each scatterplot (Highcharts appears to support this)
  + A delete option. Could either be a "delete last time" button, or a delete option when viewing a point on the chart
  + Note entry. use a text box to submit a note that is added to the last time submitted
  + A scramble generator providing a unique scramble for each solve using the proper notation. example: ( R D' B' D' R' B' U L' B2 L2 B2 R' U R' D2 F L2 F' L U R B' D F D' )

3. Users
  + Login functionality 
  + User view page
    + Personal best times by event
    + charts per event
  + guest_user functionality if possible
    + can use timer, but data isn't saved
  + User list by name
  + User search


## Must-have Features (minimum releasable state)
+ Functional Database
+ Homepage Layout
  + Login functionality
  + Nav to access accounts, timer
+ Accounts View page
  + Personal bests for that account
  + can view other users
+ Timer page with chart
  + Option to switch to other events
+ good looking styles

## Todo List

+ allow time deletion
+ final styling
  + fancy home page
  + nav bar
    + active links
    + icon home link
+ User View Page
  + Users
  + current_user


+ bugfixes (moderate importance)
  + timer page double-load bug
  + timer/spacebar mixing bug
  + last_time displays any user.
+ practice/guest timer
+ null object pattern for Users
+ implement chart Comparison

+ time despersion chart
+ more User page stuff
  + user pie chart
  + user PBs
+ custom URL










