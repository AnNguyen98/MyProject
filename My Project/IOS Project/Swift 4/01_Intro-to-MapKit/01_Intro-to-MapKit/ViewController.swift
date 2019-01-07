//
//  ViewController.swift
//  01_Intro-to-MapKit
//
//  Created by Zebra on 2017-07-17.
//  Copyright © 2017 Mammoth Interactive. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapViewOutlet: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapViewOutlet.delegate = self
        
        let nycLat = 40.78343
        let nycLong = -73.96625
        let centralParkCoord = CLLocationCoordinate2D(latitude: nycLat, longitude: nycLong)
        
//        let myAnnotation = MKPointAnnotation()
//        myAnnotation.coordinate = center
//        myAnnotation.title = "Central Park"
//        myAnnotation.subtitle = "Kewl place"
        let centralParkAnnotation = LocationAnnotation(name: "Central Park", address: "New York, NY", desc: "Great place to visit", coordinate: centralParkCoord)
        
        let momaLat = 40.754932
        let momaLong = -73.984016
        let momaCenter = CLLocationCoordinate2D(latitude: momaLat, longitude: momaLong)
        
        let momaAnnotation = LocationAnnotation(name: "Museum of Modern Art", address: "11 W 53rd St, New York, NY", desc: "Cool art!", coordinate: momaCenter)
        
//        let myAnnotation2 = MKPointAnnotation()
//        myAnnotation2.coordinate = momaCenter
//        myAnnotation2.title = "MoMA"
        
        
        mapViewOutlet.showAnnotations([centralParkAnnotation, momaAnnotation], animated: true)
        
//        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
//
//        mapViewOutlet.setRegion(region, animated: true)
//        mapViewOutlet.addAnnotations([myAnnotation, myAnnotation2])
    }
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let annotation = annotation as? LocationAnnotation {
            let identifier = "LocationAnnotation"
            var view: MKPinAnnotationView
            if let dequeuedView = mapViewOutlet.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView {
                dequeuedView.annotation = annotation
                view = dequeuedView
            } else {
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.rightCalloutAccessoryView = UIButton.init(type: .detailDisclosure)
            }
            return view
        }
        return nil
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if control == view.rightCalloutAccessoryView {
            if let viewAnnotation = view.annotation as? LocationAnnotation {
                performSegue(withIdentifier: "AnnotationDetail", sender: viewAnnotation)
            }
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let sender = sender as? LocationAnnotation {
            if let controller = segue.destination as? LocationDetailViewController {
                controller.header = sender.name
                controller.desc = sender.address
                controller.comments = sender.desc
            }
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

