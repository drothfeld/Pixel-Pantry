//
//  ViewController.swift
//  Pixel Pantry
//
//  Created by Dylan Rothfeld on 2/26/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewDidAppear() {
        // Removing user's ability to change window size
        self.view.window?.aspectRatio = NSSize(width: 19, height: 12)
        // Setting window size
        self.view.window?.setFrame(NSRect(x:0, y:0, width: 1200, height: 500), display: true)
        self.view.window?.minSize = NSSize(width: 1000, height: 300)
    }


}

