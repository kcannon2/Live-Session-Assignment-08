# Author:        Kevin Cannon
# Date Created:  11/01/2016
# Description:   Function computes the hypotenuse of a right-angle #                triangle, given the other two sides.

computeHypotenuse <- function(side1, side2) {
                      hypotenuse = sqrt((side1^2)+(side2^2))
                      round(hypotenuse,digits=1)
                    }