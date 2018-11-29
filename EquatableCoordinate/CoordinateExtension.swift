//
//  CLCoordinateExtension.swift
//  EquatableCoordinate
//
//  Created by Eric Lilienstein on 11/27/18.
//  Copyright © 2018 Eric Lilienstein. All rights reserved.
//
// A utility for comparing two geo-coordinates
//

import Foundation
import CoreLocation

extension CLLocationCoordinate2D: Equatable {}

public func ==(lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
    return lhs.latitude.truncate(places: 5) == rhs.latitude.truncate(places: 5)
        && lhs.longitude.truncate(places: 5) == rhs.longitude.truncate(places: 5)
}

// an extension to type Double lets us compare latitude and longitude with predictable lengths

extension Double
{
    func truncate(places : Int)-> Double
    {
        return Double(floor(pow(10.0, Double(places)) * self)/pow(10.0, Double(places)))
    }
}
