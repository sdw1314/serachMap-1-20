//
//  ViewController.swift
//  serachMap-1-20
//
//  Created by 孙道伟 on 16/1/20.
//  Copyright © 2016年 孙道伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var bt1: UIButton!

    @IBOutlet weak var bt2: UIButton!
  
    @IBOutlet weak var bt3: UIButton!
    
    @IBOutlet weak var btMenu: UIButton!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //对三个按钮进行设置
        self.bt1.alpha = 0
        self.bt2.alpha = 0
        self.bt3.alpha = 0
        

        //透明度变为零
        self.btMenu.alpha = 0
        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.btMenu.alpha = 1
            //旋转角度，90度
            self.btMenu.transform = CGAffineTransformMakeRotation(0.25*3.1415927)
        }, completion: nil )

    }
    
    @IBAction func btnMenuClick(sender: UIButton) {
        
        UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.bt1.alpha = 0.8
            //按钮移动
            self.bt1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.5, 1.5), CGAffineTransformMakeTranslation(-80, -25))
            self.bt2.alpha = 0.8
            self.bt2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.5, 1.5), CGAffineTransformMakeTranslation(0, -50))
            self.bt3.alpha = 0.8
            self.bt3.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.5, 1.5), CGAffineTransformMakeTranslation(80, -25))
            
            self.btMenu.transform = CGAffineTransformMakeRotation(0)
            
            
            }, completion: nil )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

