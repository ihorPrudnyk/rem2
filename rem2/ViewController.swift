//
//  ViewController.swift
//  rem2
//
//  Created by Ihor on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lableValue: UILabel!
    @IBOutlet weak var helloLableValue: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var colorValue: UIView!
    let defaultColorValue = UIColor.lightGray
    
    @IBAction func pressedHelloLable(_ sender: Any) {
        helloLableValue.text = "Ти де Мартін?"
    }
    
    @IBAction func switchImageValue(_ sender: UISwitch) {
        image.isHidden = !sender.isOn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLableValue.text = " "
        colorValue.backgroundColor = defaultColorValue
        
      
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = (slider.maximumValue - slider.minimumValue) / 2 + slider.minimumValue
        updateSliderValue()
    }
    @IBAction func sliderValueChanged(_ sender: Any) {
        updateSliderValue()
    }
    func updateSliderValue(){
        lableValue.text = "\(Int(slider.value))"
    }
    @IBAction func redColorPressed(_ sender: Any) {
        colorValue.backgroundColor = UIColor.red
    }
    
    @IBAction func blueColorPressed(_ sender: Any) {
        colorValue.backgroundColor = UIColor.blue
    }


    @IBAction func greenColorPressed(_ sender: Any) {
        colorValue.backgroundColor = UIColor.green
    }
    @IBAction func resetColorPressed(_ sender: Any) {
        colorValue.backgroundColor = defaultColorValue
    }
    
}

