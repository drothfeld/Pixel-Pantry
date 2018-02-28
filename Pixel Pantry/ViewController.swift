//
//  ViewController.swift
//  Pixel Pantry
//
//  Created by Dylan Rothfeld on 2/26/18.
//  Copyright © 2018 Dylan Rothfeld. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var LoginView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        self.view.wantsLayer = true
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewDidAppear() {
        // Removing user's ability to change window size
        self.view.window?.aspectRatio = NSSize(width: 18, height: 12)
        // Setting window size
        self.view.window?.minSize = NSSize(width: 1200, height: 800)
        self.view.window?.setFrame(NSRect(x:0, y:0, width: 1200, height: 800), display: true)
        // Removing title bar text and making translucent
        self.view.window?.styleMask.insert(NSWindow.StyleMask.unifiedTitleAndToolbar)
        self.view.window?.styleMask.insert(NSWindow.StyleMask.fullSizeContentView)
        self.view.window?.styleMask.insert(NSWindow.StyleMask.titled)
        self.view.window?.toolbar?.isVisible = false
        self.view.window?.titleVisibility = .hidden 
        self.view.window?.titlebarAppearsTransparent = true
        // Setting background window colorf
        self.view.window?.backgroundColor = NSColor.white
        
        setupLoginView()
    }
    
    // Drawing login view
    func setupLoginView() {
        LoginView.backgroundColor(color: NSColor.systemBlue)
        LoginView.alphaValue = 0.30
        LoginView.frame.origin = CGPoint(x: (self.view.frame.width/2) - (LoginView.frame.width/2), y: self.view.frame.height/4)
        LoginView.setFrameSize(NSSize(width: 400, height: 500))
    }


}

extension NSView {
    func backgroundColor(color: NSColor) {
        wantsLayer = true
        layer?.backgroundColor = color.cgColor
    }
}

