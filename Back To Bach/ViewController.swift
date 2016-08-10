//
//  ViewController.swift
//  Back To Bach
//
//  Created by Ignacio Lasaosa Sáez on 8/8/16.
//  Copyright © 2016 Ignacio Lasaosa Sáez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()

    @IBAction func play(sender: AnyObject) {
        
        player.play()
    }
    
    @IBOutlet var volumeSlider: UISlider!
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = volumeSlider.value
    }
    
    @IBOutlet var scrubSlider: UISlider!
    
    @IBAction func scrub(sender: AnyObject) {
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        player.pause()
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")!))
            
        } catch {
            
            // It didn't work!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")!))
            
        } catch {
            
            // It didn't work!
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

