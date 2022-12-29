//
//  LocationHelper.swift
//  Helper
//


import UIKit
import CoreLocation


class LocationHelper:NSObject, CLLocationManagerDelegate {
    
    var lat:Double=0;
    var lng:Double=0;
    var userLocation:CLLocation?
    
    static let shared=LocationHelper()
    
    var locationManager: CLLocationManager!
    
    private override init() {
        super.init()
        startLocationUpdates()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation:CLLocation = locations[0] as CLLocation
        self.userLocation=userLocation
        lat=userLocation.coordinate.latitude;
        lng=userLocation.coordinate.longitude;
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        lat=0;
        lng=0;
    }
    
    
    func  startLocationUpdates(){
        
        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager = CLLocationManager()
            locationManager.delegate = self
          //  locationManager.allowsBackgroundLocationUpdates = true
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
            print("startLocationUpdates")
        }
        
    }
    
    func  stopLocationUpdates(){
        locationManager.stopUpdatingLocation()
    }
    
    
}
