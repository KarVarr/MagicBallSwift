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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        createButtonUI()
        createViewUI()
       
        
    }
    
    //MARK: - button UI
    func createButtonUI() {
        clickButton.layer.cornerRadius = 45
        clickButton.layer.shadowRadius = 3.0
        clickButton.layer.shadowColor = UIColor.black.cgColor
        clickButton.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        clickButton.layer.shadowOpacity = 0.4
        clickButton.layer.masksToBounds = false
    }
    
    func createViewUI() {
        textView.layer.cornerRadius = textView.bounds.size.width / 2
        textView.layer.shadowColor = UIColor.black.cgColor
        textView.layer.shadowOpacity = 0.3
        textView.layer.masksToBounds = false
        textView.layer.shadowOffset = CGSize(width: -5.0, height: -5.0)
    }
    
    
    
    
    
    @IBAction func clickButtonAction(_ sender: UIButton) {
    }
    

}

