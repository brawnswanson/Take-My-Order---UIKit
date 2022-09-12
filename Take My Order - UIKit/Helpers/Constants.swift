//
//  Constants.swift
//  Take My Order
//
//  Created by Daniel Pressner on 19.08.22.
//

import Foundation
import SwiftUI

enum Constants {
  
  enum Colors {
    public static let green = Color("green")
    public static let navy = Color("navy")
    public static let orange = Color("orange")
    public static let lightgreen = Color("lightgreen")
    public static let appBackground = Color("background")
    public static let infoButton = Color("orange")
    public static let bellButton = Color("orange")
    public static let orderSummaryButton = Color("orange")
    public static let menuCategoryButtonForeground = Color("white")
    public static let menuCategoryButtonBackground = Color("orange")
    public static let menuCategoryButtonStroke = Color("white")
    public static let onboardingSheetDismissButtonForeground = Color("orange")
    public static let onboardingSheetBulletSymbol = Color("orange")
    public static let screenHeaderButton = Color("orange")
    public static let roundedButtonText = Color("white")
    public static let roundedButtonStroke = Color("white")
  }
  enum SFSymbolImage {
    public static let bell = Image(systemName: "bell.circle")
    public static let bullet = Image(systemName: "circle.fill")
    public static let x = Image(systemName: "x.circle")
    public static let info = Image(systemName: "info.circle")
    public static let chevronRight = Image(systemName: "chevron.right")
    public static let desserts = Image(systemName: "fork.knife")
    public static let mains = Image(systemName: "fork.knife")
    public static let starters = Image(systemName: "fork.knife")
    public static let beverages = Image(systemName: "fork.knife")
    public static let bulletListCircled = Image(systemName: "list.bullet.circle")
    public static let houseCircle = Image(systemName: "house.circle")
  }
  enum Images {
    public static let bluechef = "chef-blue"
    public static let orangechef = "chef-orange"
  }
  enum Sizes {
    public static let roundedButtonStrokeWidth = 2.0
    public static let roundedButtonCornerRadius = 21.0
    public static let mediumImage = CGSize(width: 100.0, height: 100.0)
    public static let checkoutButtonHeight = 50.0
    public static let menuCategoryButtonSize = CGSize(width: 150.0, height: 150.0)
    public static let menuCategoryButtonStrokeWidth = 2.0
  }
  enum Text {
    enum MenuCategoryButton {
      public static let starters = MenuCategory.starter.categoryLabelText
      public static let mains = MenuCategory.main.categoryLabelText
      public static let desserts = MenuCategory.dessert.categoryLabelText
      public static let beverages = MenuCategory.beverage.categoryLabelText
    }
    enum OnboardingView {
      public static let header = "Take My Order"
      public static let appDescription = "Contactless Ordering"
      public static let bullets = ["Browse the menu and select items to add to your order","Click place order to send it to the kitchen and we'll deliver your food as soon it's ready","Ready to pay, tap 'pay now' and handle everything from your table. You can even easily split the check.","We value your experience and will bother you as little as possible. Of course, if you need assistance, tap the 'bell' and one of our staff will be right with you","After ordering items, you can give us feedback and upload images.","We hope you enjoy your experience with us today!"]
    }
    enum CheckoutButton {
      public static let checkout = "Checkout: $"
    }
    enum HomeViewHeader {
      public static let header = "Welcome, "
    }
  }
  enum FontSizes {
    public static let roundButtonText = Font.title3
    public static let homeViewHeader = Font.title3
    public static let infoButton = Font.title
    public static let bellButton = Font.title
    public static let orderSummaryButton = Font.title
    public static let onboardingSheetDismissButton = Font.title
    public static let onboardingSheetHeaderText = Font.title
    public static let onboardingSheetAppDescriptionText = Font.title3
    public static let onboardingSheetBulletItemText = Font.caption2
    public static let screenHeaderButton = Font.title
    public static let screenHeaderText = Font.title3
  }
  enum Padding {
    public static let infoButton = 10.0
    public static let bellButton = 10.0
    public static let onboardingSheetDismissButton = 5.0
    public static let onboardingSheetBulletSymbol = 3.0
    public static let screenHeaderButton = 10.0
    public static let menuItemCellScroll = 3.0
  }
  enum Scaling {
    public static let orderSummaryButton = 1.5
  }
}
