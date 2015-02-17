//
//  SecondViewController.swift
//  TabbedControllerLab
//
//  Created by alan on 2/16/15.
//  Copyright (c) 2015 alan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var browserOutlet: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        browserOutlet.scrollView.scrollEnabled = true
        let url = NSURL(string : "https://www.google.com")
        let request = NSURLRequest(URL: url!)
        browserOutlet.loadRequest(request)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnForwardPressed(sender: AnyObject) {
        browserOutlet.goForward()
    }

    @IBAction func btnBackPressed(sender: AnyObject) {
        browserOutlet.goBack()
    }
}

