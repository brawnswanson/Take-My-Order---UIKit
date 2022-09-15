//
//  MenuItemsTableViewController.swift
//  Take My Order - UIKit
//
//  Created by Daniel Pressner on 12.09.22.
//

import UIKit

class MenuItemsTableViewController: UITableViewController {
  
  var menu = MenuCard()
  var selectedMenuItem: MenuItem?
  
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
    cell.menuItem = menu.menuItems[indexPath.row]
    return cell
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowDetail" {
      guard let cell = sender as? MenuItemCell, let controller = segue.destination as? ViewController else { return }
      controller.menuItem = cell.menuItem
    }
  }
}
