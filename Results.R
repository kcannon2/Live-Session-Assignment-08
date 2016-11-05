# Author:       Kevin Cannon
# Date Created:  11/01/2016
# Description:   computeHypotenuse.R computes the hypotenuse of a right-angle and calculateAngles.R calculates the angles of a right triangle.
# Live-Session-Assignment-09

# The first contains an R function that computes the right angle triangle given two sides.

# The second contains an R function that calculates the angles of the same right triangle from the first function.

# computeHypotenuse.R
computeHypotenuse <- function(side1, side2) {
  hypotenuse = sqrt((side1^2)+(side2^2))
  round(hypotenuse,digits=1)
}

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

#Calculate results of given inputs
computeHypotenuse(3,4)
calculateAngles(3,4)

computeHypotenuse(1,1)
calculateAngles(1,1)

computeHypotenuse(12,4)
calculateAngles(12,4)