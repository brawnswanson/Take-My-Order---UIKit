//
//  ViewController.swift
//  Take My Order - UIKit
//
//  Created by Daniel Pressner on 12.09.22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
  
  @IBSegueAction func ShowSwiftUI(_ coder: NSCoder) -> UIViewController? {
    return UIHostingController(coder: coder, rootView: MenuDetailView(menuItem: menuItem ?? MenuItem(name: "No Data", description: nil, price: 0.00, category: .main)))
  }
  
  var menuItem: MenuItem?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
}

