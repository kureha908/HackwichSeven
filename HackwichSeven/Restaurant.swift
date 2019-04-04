//
//  Restaurant.swift
//  HackwichSeven
//
//  Created by Kureha Pambid on 4/4/19.
//  Copyright © 2019 Kureha Pambid. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    
    let restaurantTitle: String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordiate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordiate
        
        super.init()
    }
    
    var subtitle: String?{
        return restaurantType
    }

}
