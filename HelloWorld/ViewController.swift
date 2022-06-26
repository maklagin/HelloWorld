//
//  ViewController.swift
//  HelloWorld
//
//  Created by Максим Кулагин on 27.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewColors: UIView!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    @IBOutlet var numberColorRed: UILabel!
    @IBOutlet var numberColorGreen: UILabel!
    @IBOutlet var numberColorBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColors.layer.cornerRadius = 20
        setupSlider()
        sliderAction()
    }
    
    private func setupSlider() {
        sliderRed.value = 1
        sliderRed.minimumValue = 0.0
        sliderRed.maximumValue = 1
        
        sliderGreen.value = 1
        sliderGreen.minimumValue = 0.0
        sliderGreen.maximumValue = 1
        
        sliderBlue.value = 1
        sliderBlue.minimumValue = 0.0
        sliderBlue.maximumValue = 1
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
    }
    
    @IBAction func sliderAction() {
        
        numberColorRed.text = String(format: "%.2f", sliderRed.value)
        numberColorGreen.text = String(format: "%.2f", sliderGreen.value)
        numberColorBlue.text = String(format: "%.2f", sliderBlue.value)
        
        let red = CGFloat(sliderRed.value)
        let green = CGFloat(sliderGreen.value)
        let blue = CGFloat(sliderBlue.value)
        
        viewColors.backgroundColor = UIColor(
            red: red, green: green, blue: blue, alpha: 1
        )
    }
}
