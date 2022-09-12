//
//  MenuItemsTableViewController.swift
//  Take My Order - UIKit
//
//  Created by Daniel Pressner on 12.09.22.
//

import UIKit

class MenuItemsTableViewController: UITableViewController {
  
  var menu = MenuCard()
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menu.menuItems.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell") as! MenuItemCell
    cell.cellLabel.text = menu.menuItems[indexPath.row].name
    cell.priceLabel.text = String(menu.menuItems[indexPath.row].price.formatted(.currency(code: "usd")))
    cell.cellStack.layer.cornerRadius = 10.0
    return cell
  }
}
