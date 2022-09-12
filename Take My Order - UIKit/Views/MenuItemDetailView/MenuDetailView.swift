//
//  MenuDetailView.swift
//  Take My Order
//
//  Created by Daniel Pressner on 12.09.22.
//

import SwiftUI

struct MenuDetailView: View {
  
  let menuItem: MenuItem
  
  var body: some View {
    VStack {
      Spacer()
      Text(menuItem.description ?? "No Description")
      Spacer()
      HStack {
        Spacer()
        Text("\(menuItem.price.formatted(.currency(code: "usd")))")
        Spacer()
      }
      Spacer()
    }
  }
}
