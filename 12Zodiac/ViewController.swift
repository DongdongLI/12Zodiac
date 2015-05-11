//
//  ViewController.swift
//  12Zodiac
//
//  Created by Dongdong Li on 5/10/15.
//  Copyright (c) 2015 Dongdong Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    let offset=4;
    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder();
        
        if let var year=yearOfBirth.text.toInt(){
            var imageNum=(year-offset)%12;
            image.image=UIImage(named: String(imageNum));
        }
        else
        {
            
        }
    }
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder();
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

