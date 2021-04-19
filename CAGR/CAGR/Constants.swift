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

let topSectionPercent: CGFloat = 0.7
let bottomSectionPercent = 1 - topSectionPercent

let CAGRCellColor = Color.white
let CAGRFont = "Gruppo"
let CAGRPadding: CGFloat = 20
let CAGRCornerRadius: CGFloat = 20

let CAGRCellWidth = UIScreen.main.bounds.size.width - CAGRPadding * 2
