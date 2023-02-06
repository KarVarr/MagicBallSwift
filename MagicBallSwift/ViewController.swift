//
//  ViewController.swift
//  MagicBallSwift
//
//  Created by Karen Vardanian on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var clickButton: UIButton!
    
    //MARK: - Array of random text
    let textArray = [
      "YES",
      "NO",
      "Sure",
      "Yup",
      "Try it tomorrow",
      "It is certain",
      "It is decidedly so",
      "Without a doubt",
      "Yes, definitely",
      "You may rely on it",
      "As I see it, yes",
      "Signs point to yes",
      "Ask again later",
      "Cannot predict now",
      "My reply is no",
      "My sources say no",
      "Most likely",
      "Very doubtful",
      "Certainly not",
      "Never",
    ];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButtonUI()
        createViewUI()

    }
    
    //MARK: - button UI
    func createButtonUI() {
        clickButton.layer.cornerRadius = 45
        clickButton.layer.shadowRadius =  2.0
        clickButton.layer.shadowColor = UIColor.black.cgColor
        clickButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        clickButton.layer.shadowOpacity = 0.4
        clickButton.layer.masksToBounds = false
        clickButton.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 44)
        
    }
    
    //MARK: - view UI
    func createViewUI() {
        textView.layer.cornerRadius = textView.bounds.size.width / 2
        textView.layer.masksToBounds = false
        textView.layer.shadowColor = UIColor.black.cgColor
        textView.layer.shadowOffset = (CGSize(width: -15, height: -7))
        textView.layer.shadowOpacity = 0.15
        textView.layer.shadowRadius = 20
        //UIColor(red: 0.60, green: 0.87, blue: 0.79, alpha: 1.00)
    }
    
    
    
   
    //MARK: - Button Action
    @IBAction func clickButtonAction(_ sender: UIButton) {
        textLabel.text = textArray.randomElement()
        clickButton.isEnabled = false
        clickButton.setTitle("...", for: .disabled)
        clickButton.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 44)
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ViewController.enableButton), userInfo: nil, repeats: false)
        
    }
    
    @objc func enableButton() {
        clickButton.isEnabled = true
        clickButton.setTitle("Click", for: .normal)
        clickButton.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 44)
    }
  
   
    
    

}

