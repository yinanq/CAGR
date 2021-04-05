//
//  ContentView.swift
//  CAGR
//
//  Created by Yinan Qiu on 4/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isMars = false
    @StateObject var viewModel = ContentViewModel()
    @State private var frvW = CAGRCellWidth
    @State private var tovW = CAGRCellWidth
    @State private var yrsW = CAGRCellWidth
    @State private var cagrW = screenWidth
    @State private var frvCR = CAGRCornerRadius
    @State private var tovCR = CAGRCornerRadius
    @State private var yrsCR = CAGRCornerRadius
    @State private var cagrCR: CGFloat = 0
    @State private var frvY = CAGRCellY1
    @State private var tovY = CAGRCellY2
    @State private var yrsY = CAGRCellY3
    @State private var cagrY: CGFloat = 0
    
    var body: some View {
        
        ZStack {
            CAGRCellColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack(alignment: .top) {
                    Color.gray
                    
                    VStack {
                    }
//                    .frame(width: screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
//                    .frame(width: isMars ? screenWidth : screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .frame(width: frvW, height: CAGRCellHeight)
                    .background(Color.red)
//                    .cornerRadius(CAGRCornerRadius)
//                    .cornerRadius(isMars ? 0 : CAGRCornerRadius)
                    .cornerRadius(frvCR)
//                    .offset(y: CAGRCellHeight + CAGRPadding)
//                    .offset(y: isMars ? 0 : CAGRCellHeight + CAGRPadding)
                    .offset(y: frvY)
                    .animation(.easeInOut)
                    .onTapGesture {
                        print("1/f(x)=From")
//                        isMars.toggle()
//                        viewModel.selectedOutput = .fromValue
                        frvW = screenWidth
                        tovW = CAGRCellWidth
                        yrsW = CAGRCellWidth
                        cagrW = CAGRCellWidth
                        frvCR = 0
                        tovCR = CAGRCornerRadius
                        yrsCR = CAGRCornerRadius
                        cagrCR = CAGRCornerRadius
                        frvY = 0
                        tovY = CAGRCellY1
                        yrsY = CAGRCellY2
                        cagrY = CAGRCellY3
                    }
                    
                    VStack {
                    }
//                    .frame(width: screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .frame(width: tovW, height: CAGRCellHeight)
                    .background(Color.yellow)
//                    .cornerRadius(CAGRCornerRadius)
                    .cornerRadius(tovCR)
//                    .offset(y: CAGRCellHeight * 2 + CAGRPadding * 2)
                    .offset(y: tovY)
                    .animation(.easeInOut)
                    .onTapGesture {
                        print("2/f(x)=To")
//                        viewModel.selectedOutput = .toValue
                        frvW = CAGRCellWidth
                        tovW = screenWidth
                        yrsW = CAGRCellWidth
                        cagrW = CAGRCellWidth
                        frvCR = CAGRCornerRadius
                        tovCR = 0
                        yrsCR = CAGRCornerRadius
                        cagrCR = CAGRCornerRadius
                        frvY = CAGRCellY1
                        tovY = 0
                        yrsY = CAGRCellY2
                        cagrY = CAGRCellY3
                    }
                    
                    VStack {
                    }
//                    .frame(width: screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .frame(width: yrsW, height: CAGRCellHeight)
                    .background(Color.blue)
//                    .cornerRadius(CAGRCornerRadius)
                    .cornerRadius(yrsCR)
//                    .offset(y: CAGRCellHeight * 3 + CAGRPadding * 3)
                    .offset(y: yrsY)
                    .animation(.easeInOut)
                    .onTapGesture {
                        print("3/f(x)=Years")
//                        viewModel.selectedOutput = .years
                        frvW = CAGRCellWidth
                        tovW = CAGRCellWidth
                        yrsW = screenWidth
                        cagrW = CAGRCellWidth
                        frvCR = CAGRCornerRadius
                        tovCR = CAGRCornerRadius
                        yrsCR = 0
                        cagrCR = CAGRCornerRadius
                        frvY = CAGRCellY1
                        tovY = CAGRCellY2
                        yrsY = 0
                        cagrY = CAGRCellY3
                    }
                    
                    VStack {
                    }
//                    .frame(width: screenWidth, height:  CAGRCellHeight)
//                    .frame(width: isMars ? screenWidth - CAGRPadding * 2 : screenWidth, height:  CAGRCellHeight)
                    .frame(width: cagrW, height: CAGRCellHeight)
                    .background(Color.green)
//                    .cornerRadius(0)
//                    .cornerRadius(isMars ? CAGRCornerRadius : 0)
                    .cornerRadius(cagrCR)
//                    .offset(y: 0)
//                    .offset(y: isMars ? CAGRCellHeight + CAGRPadding : 0)
                    .offset(y: cagrY)
                    .animation(.easeInOut)
                    .onTapGesture {
                        print("3/f(x)=CAGR")
//                        viewModel.selectedOutput = .cagr
                        frvW = CAGRCellWidth
                        tovW = CAGRCellWidth
                        yrsW = CAGRCellWidth
                        cagrW = screenWidth
                        frvCR = CAGRCornerRadius
                        tovCR = CAGRCornerRadius
                        yrsCR = CAGRCornerRadius
                        cagrCR = 0
                        frvY = CAGRCellY1
                        tovY = CAGRCellY2
                        yrsY = CAGRCellY3
                        cagrY = 0
                    }
                }
                
                HStack { //custom number pad
                }
                .frame(width: screenWidth, height: screenHeight * 0.29)
                .background(Color.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
