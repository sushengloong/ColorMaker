//
//  ViewController.swift
//  ColorMaker
//
//  Created by Su Sheng Loong on 4/3/15.
//  Copyright (c) 2015 Sheng-Loong Su. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        outputColor()
        let layer = colorView.layer
        layer.borderColor = UIColor.purpleColor().CGColor
        layer.borderWidth = 3.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func slide(sender: UISlider) {
        outputColor()
    }
    
    func outputColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
}

