//
//  CAGRConstants.swift
//  CAGR
//
//  Created by Yinan Qiu on 4/3/21.
//

import SwiftUI

enum Output {
    case fromValue
    case toValue
    case years
    case cagr
}

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height
let CAGRPadding = screenHeight * 0.02
let CAGRCellWidth = screenWidth - CAGRPadding * 2
let CAGRCellHeight = screenHeight * 0.12
let CAGRCornerRadius: CGFloat = 18
let CAGRCellColor = Color.white
let CAGRCellY1 = CAGRCellHeight + CAGRPadding
let CAGRCellY2 = CAGRCellHeight * 2 + CAGRPadding * 2
let CAGRCellY3 = CAGRCellHeight * 3 + CAGRPadding * 3
