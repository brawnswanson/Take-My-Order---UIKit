//
//  MenuItem.swift
//  Take My Order
//
//  Created by Daniel Pressner on 26.08.22.
//

import Foundation

struct MenuItem: Hashable {
  let id = UUID()
  let name: String
  let description: String?
  var price: Double
  let category: MenuCategory
}
