# Author:       Kevin Cannon
#Date Created:  11/01/2016
#Description:   Function calculates the angles of a right triangle.
                
calculateAngles <- function(side1, side2) {
# Call function to calculate hypotenuse
hypotenuse = computeHypotenuse(side1,side2)
  
# Determine opposite side
oppositeSide <-if (side1>side2) {side2} 
else {side1}
  
# Inverse sine 
rad <- asin(oppositeSide/hypotenuse)
  
# Convert radians to degrees
deg <- round((rad*(180/pi)),digits=1)
  
# Calculate the three angles
x <- deg
y <- 90
z <- 180 - x - y
angles = data.frame(c(x,y,z))
  
# Return angles
angles
}