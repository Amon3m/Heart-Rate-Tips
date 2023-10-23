//
//  ViewController.swift
//  Heart Rate
//
//  Created by abdelmonem on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var rateTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLbl.text=" "
    }


    @IBAction func rateBtn(_ sender: Any) {
        if let rate = Int(rateTxt.text!) {
            var result: String
            
            switch rate {
            case 100...120:
                result = "You are in the very light zone. Activity in this zone helps with recovery."
            case 121...140:
                result = "You are in the light zone. Activity in this zone helps improve aerobic fitness."
                
            case 141...160:
                result = "You are in Moderate zone. Activity in this zone helps improve Basic endurance and fat burning."
            case 161...180:
                result = "You are in the Hard zone. Activity in this zone zone increases maximum performance capacity for shorter sessions."
            case 181...200:
                result = "You are in Maximum zone. Activity in this zone helps fit athletes develop speed."
            default:
                result = "Heart rate outside of specified zones."
                resultLbl.textColor = UIColor.red
                
            }
            
            resultLbl.text=result
        } else {
            print("Invalid heart rate input")
            resultLbl.textColor = UIColor.red

        }
    }
}

