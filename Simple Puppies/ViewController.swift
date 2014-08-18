//
//  ViewController.swift
//  Simple Puppies
//
//  Created by galvanize on 8/18/14.
//  Copyright (c) 2014 galvanize. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var puppyLabel: UILabel!
    
    var imageName = "puppy1.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.puppyLabel.text = imageName
        self.imageView.image = UIImage(named: imageName)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapToggleButton(sender: AnyObject) {
        if imageName == "puppy1.jpg" {
            imageName = "puppy2.jpg"
        } else {
            imageName = "puppy1.jpg"
        }
        self.imageView.image = UIImage(named: imageName)
        self.puppyLabel.text = imageName
    }

}

