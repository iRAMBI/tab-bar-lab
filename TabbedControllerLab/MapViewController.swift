//
//  MapViewController.swift
//  TabbedControllerLab
//
//  Created by Ben Soer on 2015-02-16.
//  Copyright (c) 2015 alan. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapViewController: UIViewController{
    
    @IBOutlet var mapview: MKMapView!
    
    private var newyork = CLLocationCoordinate2D(latitude:40.7127, longitude: 74.0059);
    private var paris = CLLocationCoordinate2D(latitude: 48.8582, longitude: 2.2945);
    private var vancouver = CLLocationCoordinate2D(latitude: 49.2500, longitude: 123.1000);
    
    //newyork
    //paris
    //vancouver
    var city:String = "paris";
    
    var locList = Dictionary<String, CLLocationCoordinate2D>();
    var titleList = Dictionary<String,String>();
    
    
    
    var location = CLLocationCoordinate2D(latitude: 0, longitude: 0); // eiffel tower paris
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        locList["newyork"] = newyork;
        titleList["newyork"] = "New York";
        locList["vancouver"] = vancouver;
        titleList["vancouver"] = "Vancouver";
        locList["paris"] = paris;
        titleList["paris"] = "Paris";
        
        var annotation = MKPointAnnotation();
        
        if (city != ""){
            location = locList[city]!;
            annotation.title = titleList[city]!;
            
        }
        
        
        var span = MKCoordinateSpanMake(1,1);
        var region = MKCoordinateRegion(center: location, span: span);
        
        mapview.setRegion(region, animated: true);
        annotation.setCoordinate(location);
        mapview.addAnnotation(annotation);
        
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}