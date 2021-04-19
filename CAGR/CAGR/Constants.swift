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

let topSectionPercent: CGFloat = 0.63
let bottomSectionPercent = 1 - topSectionPercent

let CAGRCellColor = Color.white
let CAGRFontForLabel = "Saira-Medium"
let CAGRFontForContent = "Saira-Thin"
let CAGRFontForNumberPad = "Saira-Regular"
let CAGRFontSizeForLabel: CGFloat = 16
let CAGRFontSizeForContent: CGFloat = 60
let CAGRPadding: CGFloat = 20
let CAGRCornerRadius: CGFloat = 20
let CAGRGap: CGFloat = 2

let CAGRCellWidth = UIScreen.main.bounds.size.width - CAGRPadding * 2
