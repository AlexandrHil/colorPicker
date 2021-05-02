//  ViewController.swift
//  ColorPicker
//
//  Created by Alex on 31.01.21.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var appDescription: UILabel!
    @IBOutlet weak var appInstruction: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var colorSquare: UIView!
    @IBOutlet weak var paintButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDescription.backgroundColor = .gray
        redLabel.backgroundColor = .red
        greenLabel.backgroundColor = .green
        blueLabel.backgroundColor = .blue
        errorLabel.text = ""
        
        logoImage.layer.cornerRadius = 20
        paintButton.layer.cornerRadius = 15
        colorSquare.layer.cornerRadius = 15
    }
    
    
    @IBAction func typeRedLevel(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func typeGreenLevel(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func typeRedlevel(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func paintButtonPressed(_ sender: UIButton) {
        colorSquare.backgroundColor = setColor()
    }
    
    
    private func setColor() -> UIColor? {
        
        guard let setRedColorValue = Float(redTextField.text ?? "0") else { return nil }
        guard let setGreenColorValue = Float(greenTextField.text ?? "0")  else { return nil }
        guard let setBlueColorValue = Float(blueTextField.text ?? "0") else { return nil }
        
        let backgroundColor = UIColor(red: CGFloat(Float(setRedColorValue)),
                                      green: CGFloat(Float(setGreenColorValue)),
                                      blue: CGFloat(Float(setBlueColorValue)),
                                      alpha: 1.0)
        
        if setRedColorValue > 1 || setRedColorValue < 0 ||
            setGreenColorValue > 1 || setGreenColorValue < 0 ||
            setBlueColorValue > 1 || setBlueColorValue < 0 {
            errorLabel.text = String("Input correct data, please!")
            errorLabel.textColor = .red
        } else {
            errorLabel.text = ""
        }
        return backgroundColor
    }
}

