//
//  ViewController.swift
//  GoogleLoding
//
//  Created by lianghailiang on 15/9/24.
//  Copyright © 2015年 jinvovo_ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loadingView: UIView!

    let ovalShapeLayer: CAShapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ovalShapeLayer.strokeColor = UIColor.redColor().CGColor
        ovalShapeLayer.fillColor = UIColor.clearColor().CGColor
        ovalShapeLayer.lineWidth = 2

        
        let ovalRadius = loadingView.frame.size.height/2 * 0.8

        
        ovalShapeLayer.path = UIBezierPath(ovalInRect: CGRect(x: loadingView.frame.size.width/2 - ovalRadius, y: loadingView.frame.size.height/2 - ovalRadius, width: ovalRadius * 2, height: ovalRadius * 2)).CGPath

        ovalShapeLayer.lineCap = kCALineCapRound
        ovalShapeLayer.strokeEnd = 0.8
        loadingView.layer.addSublayer(ovalShapeLayer)
        
        print("123")
        print("456")
        print("789")
        
        print("abc")

    }
    
    override func viewWillAppear(animated: Bool) {
        beginSimpleAnimation()
    }
    
    func beginSimpleAnimation() {
        let rotate = CABasicAnimation(keyPath: "transform.rotation")
        rotate.duration = 1.5
        rotate.fromValue = 0
        rotate.toValue = 2 * M_PI
        rotate.repeatCount = HUGE
        loadingView.layer.addAnimation(rotate, forKey: nil)
    }

}

