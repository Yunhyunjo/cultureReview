//
//  writeViewController.swift
//  Review
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return c_list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return c_list[row]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        textField.resignFirstResponder()
        return true
        
    }
    
    @IBOutlet var pickerCulture: UIPickerView!
    @IBOutlet var textTitle: UITextField!
    @IBOutlet var textMemo: UITextView!
    @IBOutlet var cDate: UIDatePicker!
    @IBOutlet var Titlee: UIImageView!
    @IBOutlet var memooo: UIImageView!
    
    let titlee = UIImage(named: "title-01.png")
    let memoom = UIImage(named: "메모.png")
    
    
    
    var datee: String = " "
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toShow" {
            let destVC = segue.destination as! showViewController
            let dateFormatter = DateFormatter()
            
            dateFormatter.dateFormat = "yyyy년 MM월 dd일"
            
            destVC.wtitle = textTitle.text
            destVC.wmemo = textMemo.text
            destVC.wdate = dateFormatter.string(from: self.cDate.date)
            datee = dateFormatter.string(from: self.cDate.date)
        }
    }
    
    
    
    let c_list: Array<String> = ["콘서트","뮤지컬","연극","전시회","영화"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Titlee.image = titlee
        memooo.image = memoom
    }
    
    @IBAction func save() {
        let index = pickerCulture.selectedRow(inComponent:0)
        var reviewData = [Review(sortt: index, title: "\(textTitle?.text)",date: datee, memo: "\(textMemo?.text)")]
        
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
