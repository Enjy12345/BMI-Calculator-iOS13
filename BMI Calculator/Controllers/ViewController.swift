//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var HeightSlider: UISlider!
    
    @IBOutlet weak var WeightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func theHeightSliderChange(_ sender: UISlider) {
      let height = String(format:"%.2f", sender.value)
        HeightLabel.text = "\(height)m"
    }
    
    @IBAction func theWeightSliderChange(_ sender: UISlider) {
     let weight =  String(format:"%.0f", sender.value)
        WeightLabel.text = "\(weight)kg"
}

    @IBAction func CalculatePressed(_ sender: UIButton) {
        let height = HeightSlider.value
        let weight = WeightSlider.value
        print(height)
        print (weight)
        let BMI = weight / pow(height, 2)
        print (BMI)
    }
    
}


