//
//  ShaneWork-ScrollView.swift
//  ScrollViewSample
//
//  Created by Shane Cowherd on 1/22/17.
//  Copyright © 2017 Shane Cowherd. All rights reserved.
//

import Foundation
import UIKit

class ShaneWorkScrollView: UIScrollView, UIScrollViewDelegate {
  var subView = UIView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setDefaults()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setDefaults()
  }
  
  func insertView(_ view:UIView) {
    subView.removeFromSuperview()
    subView = view
    self.addSubview(view)
  }

  func setDefaults() {
    self.backgroundColor = UIColor.black
    self.isUserInteractionEnabled = true
    self.bounces = true
    self.contentSize = self.frame.size
    self.isScrollEnabled = true
    self.bouncesZoom = true
    self.minimumZoomScale = 0.7
    self.maximumZoomScale = 5.5
    self.zoomScale = 1.0
    subView = UIView(frame: self.frame)
    self.addSubview(subView)
    self.delegate = self
    setZoomScale(view: subView, scrollView: self)
  }
  
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return subView
  }
  
  func setZoomScale(view: UIView, scrollView:UIScrollView) {
    let viewSize = view.bounds.size
    let scrollViewSize = scrollView.bounds.size
    let widthScale = scrollViewSize.width / viewSize.width
    let heightScale = scrollViewSize.height / viewSize.height
    scrollView.minimumZoomScale = min(widthScale, heightScale)
    scrollView.zoomScale = 1.0
  }
  
  func scrollViewDidZoom(_ scrollView: UIScrollView) {
    let offsetX = max((scrollView.bounds.width - scrollView.contentSize.width) * 0.5, 0)
    let offsetY = max((scrollView.bounds.height - scrollView.contentSize.height) * 0.5, 0)
    scrollView.contentInset = UIEdgeInsetsMake(offsetY, offsetX, 0, 0)
  }
}
