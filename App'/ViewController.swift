//
//  ViewController.swift
//  App'
//
//  Created by Lombardo, Vincent on 1/30/23.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var brick_8: UIImageView!
    @IBOutlet weak var brick_7: UIImageView!
    @IBOutlet weak var brick_6: UIImageView!
    @IBOutlet weak var yslid: UISlider!
    @IBOutlet weak var xslid: UISlider!
    @IBOutlet weak var arioimage: UIImageView!
    
    @IBOutlet weak var brick_5: UIImageView!
    @IBOutlet weak var brick_2: UIImageView!
    @IBOutlet weak var star: UIImageView!
    
    @IBOutlet weak var brick_4: UIImageView!
    @IBOutlet weak var brick_3: UIImageView!
    @IBOutlet weak var brickkkk: UIImageView!
   

        override func viewDidLoad() {
            super.viewDidLoad()
            
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Startbutton(_ sender: Any) {
        performSegue(withIdentifier: "gotonext", sender: self)
        
    }
    @IBAction func Xslider(_ sender: UISlider) {
        let Xval = sender.value
        arioimage.frame.origin.x = CGFloat(Xval)
        
        checkpos()
        
        
        
        
        
    }
    
    @IBAction func Yslider(_ sender: UISlider) {
        
        let Yval = sender.value
        arioimage.frame.origin.y  = -CGFloat(Yval) + CGFloat(230)
        checkpos()
        
    }
    
    func checkpos() {
        let bricklist = [brickkkk,brick_2,brick_3,brick_4,brick_5,brick_6,brick_7,brick_8]
        if (arioimage.frame.intersects(star.frame)){
            print("Complete")
            performSegue(withIdentifier: "gotonext", sender: self)
            resetboard()
        }
        for brick in bricklist{
            if(arioimage.frame.intersects(brick!.frame)){
                   resetboard()
            }
        }
        
        
    }
    func resetboard(){
        arioimage.frame.origin.x = CGFloat(11);
        arioimage.frame.origin.y = CGFloat(230);
        xslid.setValue(Float(0), animated: false)
        yslid.setValue(Float(0), animated: false)
        print(yslid.value)
    }
        
}

