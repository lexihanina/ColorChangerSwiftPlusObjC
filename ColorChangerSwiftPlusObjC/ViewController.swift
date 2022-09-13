//
//  ViewController.swift
//  ColorChangerSwiftPlusObjC
//
//  Created by Lexi Hanina on 2/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var colorView: UIView!
    @IBOutlet private weak var redLable: UILabel!
    @IBOutlet private weak var greenLable: UILabel!
    @IBOutlet private weak var blueLable: UILabel!
    @IBOutlet private weak var redSlider: UISlider!
    @IBOutlet private weak var greenSlider: UISlider!
    @IBOutlet private weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackroundColor()
    }
    
    func changeBackroundColor(red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0) {
        colorView.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        redLable.text = String(Int(red))
        greenLable.text = String(Int(green))
        blueLable.text = String(Int(blue))
        
        changeBackroundColor(red: red, green: green, blue: blue)
    }
    
    
}

