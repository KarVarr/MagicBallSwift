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
    
   let modelView = ModelView()
    
    
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
        clickButton.titleLabel?.font = R.Fonts.AppleSDGothicNeoLight(with: 44)
        
    }
    
    //MARK: - view UI
    func createViewUI() {
        textView.layer.cornerRadius = textView.bounds.size.width / 2
        textView.layer.masksToBounds = false
        textView.layer.shadowColor = UIColor.black.cgColor
        textView.layer.shadowOffset = (CGSize(width: -15, height: -7))
        textView.layer.shadowOpacity = 0.15
        textView.layer.shadowRadius = 20
    }
    
    
    
   
    //MARK: - Button Action
    @IBAction func clickButtonAction(_ sender: UIButton) {
        textLabel.text = modelView.textArray.randomElement()
        textLabel.textColor = R.Colors.pinkCustom
        
        clickButton.isEnabled = false
        clickButton.titleLabel?.font = R.Fonts.AppleSDGothicNeoLight(with: 44)
        clickButton.setAttributedTitle(R.Fonts.customButtonTitlePress, for: .normal)
        
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ViewController.enableButton), userInfo: nil, repeats: false)
        
    }
    
    @objc func enableButton() {
        clickButton.isEnabled = true
        clickButton.setAttributedTitle(R.Fonts.customButtonTitle, for: .normal)
        
        textLabel.text = R.Strings.askAgain
        textLabel.textColor = R.Colors.black
    }
  
   
    
    

}

