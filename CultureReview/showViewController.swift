//
//  showViewController.swift
//  Review
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class showViewController: UIViewController {
    
    
    @IBOutlet var wTitle: UILabel!
    @IBOutlet var wMemo: UITextView!
    @IBOutlet var cDate: UILabel!
    @IBOutlet var titlee: UIImageView!
    @IBOutlet var datee: UIImageView!
    @IBOutlet var memoo: UIImageView!
    
    let ttitle = UIImage(named: "title-01.png")
    let ddate = UIImage(named: "date-01.png")
    let memmm = UIImage(named: "메모.png")
    
    var wtitle: String?
    var wmemo: String?
    var wdate: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let title = wtitle{
            if let memo = wmemo{
                wTitle.text = title
                wMemo.text = memo
                cDate.text = wdate
            }
            titlee.image = ttitle
            datee.image = ddate
            memoo.image = memmm
            
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

