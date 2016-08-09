//
//  ViewController.swift
//  Back To Bach
//
//  Created by Ignacio Lasaosa Sáez on 8/8/16.
//  Copyright © 2016 Ignacio Lasaosa Sáez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func play(sender: AnyObject) {
    }
    
    @IBOutlet var volumeSlider: UISlider!
    
    @IBAction func adjustVolume(sender: AnyObject) {
    }
    
    @IBOutlet var scrubSlider: UISlider!
    
    @IBAction func scrub(sender: AnyObject) {
    }
    
    @IBAction func pause(sender: AnyObject) {
    }
    
    @IBAction func stop(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

