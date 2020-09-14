//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by testinium on 13.09.2020.
//  Copyright © 2020 testinium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isdogCool = true
    @IBOutlet var imageLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImage (){
        
        if isdogCool == true {
            imageView.image = UIImage(named: "dogSmart")
            imageLabel.text = "Smart"
            isdogCool = false
        }else{
            imageView.image = UIImage(named: "dogCool")
            imageLabel.text = "Cool"
            isdogCool = true
        }
        
    }


}

