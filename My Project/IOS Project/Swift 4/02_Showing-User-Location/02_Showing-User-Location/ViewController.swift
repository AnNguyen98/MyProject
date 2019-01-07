//
//  ViewController.swift
//  02_Showing-User-Location
//
//  Created by Zebra on 2017-07-19.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapViewOutlet: MKMapView!
    
    let myManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myManager.delegate = self
        mapViewOutlet.delegate = self
        myManager.desiredAccuracy = kCLLocationAccuracyBest
        myManager.requestWhenInUseAuthorization()
        myManager.startUpdatingLocation()
        
        let location = CLLocation(latitude: 37.331686, longitude: -122.030656)
        let location2 = CLLocation(latitude: 37.4000, longitude: -122.030656)
        let locations : [CLLocation] = [location, location2]
        
        circleOverlayCreator(location)
        lineOverlayCreator(locations)
        
        let topOfTriangle = CLLocation(latitude: 37.333817, longitude: -122.029676)
        let leftOfTriangle = CLLocation(latitude: 37.330320, longitude: -122.031929)
        let rightOfTriangle = CLLocation(latitude: 37.330149, longitude: -122.027702)
        let triangle : [CLLocation] = [topOfTriangle, leftOfTriangle, rightOfTriangle]
        polygonOverlayCreator(triangle)
    }
    
    func polygonOverlayCreator(_ locations: [CLLocation]) {
        let mappedCoords = locations.map { $0.coordinate }
        let polygon = MKPolygon(coordinates: mappedCoords, count: mappedCoords.count)
        mapViewOutlet.add(polygon)
    }
    
    func lineOverlayCreator(_ locations: [CLLocation]) {
        let mappedCoords = locations.map { $0.coordinate }
        let polyline = MKPolyline(coordinates: mappedCoords, count: mappedCoords.count)
        mapViewOutlet.add(polyline)
    }
    
    func circleOverlayCreator(_ location: CLLocation) {
        let circle = MKCircle(center: location.coordinate, radius: 250)
        mapViewOutlet.add(circle)
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKCircle {
           let circle = MKCircleRenderer(overlay: overlay)
            circle.strokeColor = UIColor.red
            circle.fillColor = UIColor.green.withAlphaComponent(0.1)
            circle.lineWidth = 1
            return circle
        } else if overlay is MKPolyline {
            let line = MKPolylineRenderer(overlay: overlay)
            line.strokeColor = UIColor.cyan
            line.lineWidth = 3
            return line
        } else if overlay is MKPolygon {
            let polygon = MKPolygonRenderer(overlay: overlay)
            polygon.strokeColor = UIColor.brown
            polygon.fillColor = UIColor.darkGray.withAlphaComponent(0.25)
            polygon.lineWidth = 2
            return polygon
        }
        else {
            return MKOverlayRenderer()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let lattitude = location.coordinate.latitude
        let longitude = location.coordinate.longitude
        let mapLocation = CLLocationCoordinate2DMake(lattitude, longitude)
        
        let myRegion = MKCoordinateRegionMake(mapLocation, span)
        
        mapViewOutlet.setRegion(myRegion, animated: true)
        mapViewOutlet.showsUserLocation = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

