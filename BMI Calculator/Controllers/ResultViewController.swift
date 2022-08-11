//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Jittanan Jackthreemongkol on 11/8/2565 BE.
//  Copyright © 2565 BE Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?


    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = "Eat more"
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func reCalculator(_ sender: UIButton) {
       dismiss(animated: true,completion: nil)
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
