//
//  constants.swift
//  cagr
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

let topSectionPercent: CGFloat = 0.66
let bottomSectionPercent = 1 - topSectionPercent

let CAGRCellColor = Color.white
let CAGRFontForLabel = "Saira-SemiBold"
let CAGRFontForContent = "Saira-Thin"
let CAGRFontForNumberPad = "Saira-ExtraLight"
let CAGRFontSizeForLabel: CGFloat = 14
let CAGRFontSizeForContent: CGFloat = 60
let CAGRFontSizeForNumberPad: CGFloat = 24
let CAGRPadding: CGFloat = 20
let CAGRCornerRadius: CGFloat = 20
let CAGRGap: CGFloat = 2

let CAGRCellWidth = UIScreen.main.bounds.size.width - CAGRPadding * 2
