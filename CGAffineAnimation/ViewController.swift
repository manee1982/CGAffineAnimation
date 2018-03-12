//
//  ViewController.swift
//  CGAffineAnimation
//
//  Created by Smart Visions on 3/12/18.
//  Copyright © 2018 Smart Visions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonBg: UIView!
    @IBOutlet weak var arrowButton: UIButton!
    @IBOutlet weak var menuBg: UIView!
    @IBOutlet weak var downloadBtn: UIButton!
    @IBOutlet weak var callBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    @IBAction func arrowButtonTapped(_ sender: Any) {
        
        if buttonBg.transform == .identity {
            UIView.animate(withDuration: 1, animations: {
                self.buttonBg.transform = CGAffineTransform(scaleX: 15, y: 15)
                self.menuBg.transform = CGAffineTransform(translationX: 0, y: -60)
                self.arrowButton.transform = CGAffineTransform(rotationAngle: self.calculateAngle(angle: -180))
                
            }) { (true) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.downloadBtn.transform = CGAffineTransform(scaleX: 2, y: 2)
                    self.callBtn.transform = CGAffineTransform(scaleX: 2, y: 2)
                })
            }
            
        } else {
            UIView.animate(withDuration: 1, animations: {
                self.buttonBg.transform = .identity
                self.menuBg.transform = .identity
                self.arrowButton.transform = .identity
                self.downloadBtn.transform = .identity
                self.callBtn.transform = .identity
            })
        }
        
    }
    
    func calculateAngle(angle: Double) -> CGFloat {
        return CGFloat(angle * .pi / angle)
    }
}

