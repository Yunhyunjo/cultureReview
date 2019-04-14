//
//  ViewController.swift
//  CultureReview
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let homei = UIImage(named: "culture-01.png")
    
    @IBOutlet var homedd: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        homedd.image = homei
    }
    var reviewData = [Review(sortt: 0, title: "", date: "", memo: "")]

}

