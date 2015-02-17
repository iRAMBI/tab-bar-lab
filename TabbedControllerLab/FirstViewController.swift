//
//  FirstViewController.swift
//  TabbedControllerLab
//
//  Created by alan on 2/16/15.
//  Copyright (c) 2015 alan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblDayOfWeek: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = NSDate()
        
        let dayFormatter = NSDateFormatter()
        dayFormatter.dateFormat = "EEEE"
        let dayOfWeekString = dayFormatter.stringFromDate(date)
        lblDayOfWeek.text = dayOfWeekString
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        lblDate.text = dateFormatter.stringFromDate(date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

