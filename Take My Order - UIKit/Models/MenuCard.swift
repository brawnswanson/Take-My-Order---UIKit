//
//  MenuModel.swift
//  Take My Order
//
//  Created by Daniel Pressner on 26.08.22.
//

import Foundation
import SwiftUI

struct MenuCard {
  
  var menuItems = [MenuItem]()
  
  init() {
    createDerivedDate()
//    printMenu(menu: menuItems)
  }
  
  mutating func createDerivedDate() {
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Punk IPA", description: "Brewdog's famous Punk IPA, all the hop flavor you want!", price: 6.00, category: .beverage))
    let _ = addMenuItem(item: MenuItem(name: "Focaccia", description: "Homemade focaccia topped with rosemary and sea salt", price: 11.00, category: .starter))
    let _ = addMenuItem(item: MenuItem(name: "Panna Cotta", description: "Delicous creamy dessert with fresh raspberries", price: 12.00, category: .dessert))
    let _ = addMenuItem(item: MenuItem(name: "Pizza Margherita", description: "Classic margherita pizza with a perfect crispy crust", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Guinness Stout", description: "The classic stout. Dark, roasted flavor with a delicsously creamy head", price: 7.00, category: .beverage))
    let _ = addMenuItem(item: MenuItem(name: "Sushi Platter", description: "Chefs selection of various nigiri and maki sushi", price: 25.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Burger and Fries", description: "A delicious juicy all beef patty and our signature fries", price: 16.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Vegetarian Tempura", description: "Tofu and various fresh vegetables, coated in our tempura batter and deep fried to perfection", price: 15.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Gyoza", description: "Vegetarian or meat filled dumplings, steamed or fried. Your choice!", price: 12.00, category: .starter))
    let _ = addMenuItem(item: MenuItem(name: "Grilled Salmon", description: "Season salmon fillet grilled over hickory coals", price: 25.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Coca Cola", description: nil, price: 4.50, category: .beverage))
    let _ = addMenuItem(item: MenuItem(name: "Apple Pie", description: "Just like mom makes it!", price: 11.00, category: .dessert))
    let _ = addMenuItem(item: MenuItem(name: "Bread Pudding", description: "Cinnamon, butter, sugar, eggs and bread. What more would you want?", price: 14.00, category: .dessert))
    let _ = addMenuItem(item: MenuItem(name: "Cinammon Ice Cream", description: "A generous scoop of our homemade cinnamon ice cream.", price: 7.00, category: .dessert))
    let _ = addMenuItem(item: MenuItem(name: "Antipasti platter", description: "Prosciutto, salami, cheeses, olives, marinated vegetables. Perfect start to your dinner", price: 18.00, category: .starter))
    let _ = addMenuItem(item: MenuItem(name: "Pumpkin Soup", description: "Smooth, creamy autumn classic", price: 10.00, category: .starter))
    let _ = addMenuItem(item: MenuItem(name: "Sparkling water", description: nil, price: 4.50, category: .beverage))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
    let _ = addMenuItem(item: MenuItem(name: "Spaghetti Bolognese", description: "A healthy portion of perfectly cooked spaghetti topped with our homemade meat sauce", price: 18.00, category: .main))
  }
  
  mutating func addMenuItem(item: MenuItem) -> Bool {
    //Explicitly added return statement to fulfill homework nice to have knowing that I don't need to have a return statement when the return statement is on the first line of the function
    menuItems.append(item)
    return true
  }
  
  func printMenu(menu: Set<MenuItem>) {
    for item in menu {
      if let description = item.description {
        print(item.name + (": \(item.category.rawValue)"))
        print("  \(description)")
        print("  \(item.price.formatted(.currency(code: "usd")))")
      }
    }
  }
}

enum MenuCategory: String, CaseIterable {
  case starter
  case main
  case dessert
  case beverage
  
  var categoryLabelText: String {
    self.rawValue.capitalized + "s"
  }
  
  var image: Image {
    switch self {
    case .starter:
      return Constants.SFSymbolImage.starters
    case .main:
      return Constants.SFSymbolImage.mains
    case .beverage:
      return Constants.SFSymbolImage.beverages
    case .dessert:
      return Constants.SFSymbolImage.desserts
    }
  }
}
