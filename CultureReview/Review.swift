//
//  Review.swift
//  CultureReview
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class Review : NSObject {
    var sortt : Int = 0
    var title : String = ""
    var date : String = ""
    var memo : String = ""

    init(sortt : Int, title : String, date : String, memo : String){
        self.sortt = sortt
        self.title = title
        self.date = date
        self.memo = memo
        super.init()
    }
}
