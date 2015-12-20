//
//  ViewController.swift
//  DaylightView
//
//  Created by Kyle on 2015-12-19.
//  Copyright (c) 2015 Kyle O'Shaughnessy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var photoImageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadEarthImage(640, latitude: 53.5, longitude: 113.65)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func loadEarthImage(pxSize : Int, latitude : Double, longitude : Double) {
        let url = NSURL(string: "http://www.fourmilab.ch/cgi-bin/Earth?img=learth&opt=-l&dynimg=y&date=0&imgsize=\(pxSize)&ns=North&ew=West&lat=\(latitude)&lon=\(longitude)")
        let data = NSData(contentsOfURL:url!)
        if data != nil {
            photoImageView.image = NSImage(data:data!)
        }
    }

}

