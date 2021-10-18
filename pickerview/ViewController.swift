//
//  ViewController.swift
//  pickerview
//
//  Created by Ruben Rojo on 10/7/21.
//

import UIKit

//add uipickerviewdelegate and uipickerviewdatasource to the class

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    //delclare outlets
    
    @IBOutlet weak var pickerViewOutlet: UIPickerView!
    
    //declare array. an array can have many values stored in it
    let pickerViewArray = ["Alpha","Beta","Gamma","Delta"]
    
    //stub functions that populate after adding Uipickerviewdelegate and datasource to the class.
    @IBOutlet weak var textFieldOutlet: UITextField!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
     return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    
    {
        return pickerViewArray.count
    }
   //add next two funcs
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         pickerViewArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.endEditing(true)
        
        switch row
        {
        case 0:
            textFieldOutlet
                .text = "A"
        case 1:
            textFieldOutlet
                .text = "B"
        case 2:
            textFieldOutlet
                .text = "C"
        case 3:
            textFieldOutlet
                .text = "D"
        default:
            textFieldOutlet
                .text =
            "please select a choice."
            break 
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerViewOutlet
            .delegate = self
        pickerViewOutlet
            .dataSource = self
    }


}

