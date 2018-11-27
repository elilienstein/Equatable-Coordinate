#  Equatable conformance for CLLocationCoordinate2D

# Includes: 
- an extension to type CLLocationCoordinate2D to conform to Equatable
- an extension to type Double to truncate a geo-coordinate to a specified number of decimal places.
- a public function accepting 2 coordinates and returning a boolean value

# Reasoning: 
 If two coordinates are queried for approximate equality, their latitude and longitude need to be of predictable length. A value in decimal degrees to 5 decimal places is precise to 1.1132 meter at the equator. 

# Use Cases: 
Client performs a zone check-in. 
Send the client custom information based on their location.


# Exercise with isSameSpot(::)

let coord1: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 37.358028, longitude: -121.9074856)
let coord2: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 37.358029, longitude: -121.9074857)

let result = isSameSpot(coord1, coord2) // returns true


