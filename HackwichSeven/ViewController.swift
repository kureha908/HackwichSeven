//
//  ViewController.swift
//  HackwichSeven
//
//  Created by Kureha Pambid on 4/4/19.
//  Copyright © 2019 Kureha Pambid. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let regionRadious : CLLocationDistance = 10000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
        
        let resturantOne = Restaurant(title: "Kalapawai", type: "American", coordiate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(resturantOne)
    }

    func centerMapOnLocation(location: CLLocation){
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadious,longitudinalMeters: regionRadious)
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

