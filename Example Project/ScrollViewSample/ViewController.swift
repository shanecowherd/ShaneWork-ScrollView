//
//  ViewController.swift
//  ScrollViewSample
//
//  Created by Shane Cowherd on 1/22/17.
//  Copyright © 2017 Shane Cowherd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var scrollView = ShaneWorkScrollView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let orange = UIView(frame: self.view.frame)
    orange.backgroundColor = UIColor(patternImage: UIImage(named: "pattern.jpg")!)
    
    scrollView = ShaneWorkScrollView(frame: self.view.frame)
    self.view.addSubview(scrollView)
    
    scrollView.insertView(orange)
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

