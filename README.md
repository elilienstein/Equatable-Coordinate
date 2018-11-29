# Extension conforming CLLocationCoordinate2D to the Equatable protocol

#Includes: 
- an extension to type CLLocationCoordinate2D to conform to Equatable
- an extension to type Double to truncate a geo-coordinate to a specified number of decimal places.

#Reasoning: 
 If two coordinates are queried for approximate equality, their latitude and longitude need to be of predictable length. A value in decimal degrees to 5 decimal places is precise to 1.1132 meter at the equator.  Close enough for my purpose.

#Use Case: 
Compare two arrays of coordinates for matches.

#Implementation: a function taking two arrays of coordinates as parameters and returning an array wrapped in an optional:


    func  findCommonCoordinates(_ lhs: [CLLocationCoordinate2D], _ rhs: [CLLocationCoordinate2D]) -> [CLLocationCoordinate2D]?
    {
      var coords = [CLLocationCoordinate2D]()

        for lhsItem in lhs {
          for rhsItem in rhs {
            if lhsItem.latitude == rhsItem.latitude
              && lhsItem.longitude == rhsItem.longitude {
                coords.append(lhsItem)
              }
          }
        }
      return coords
    }


