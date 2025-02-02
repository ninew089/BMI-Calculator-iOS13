//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentHeight = String(format:"%.2f", sender.value)
        heightLabel.text = "\(currentHeight) m"
        
       print( currentHeight)
        
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentWeight = String(format:"%.0f", sender.value)
        weightLabel.text = "\(currentWeight) Kg"
        print( currentWeight)
    }
    @IBAction func calcBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / (height * height)
        
        bmiValue = String(format: "%.1f",bmi)
    
        performSegue(withIdentifier: "goToResult", sender: self)
        
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}

