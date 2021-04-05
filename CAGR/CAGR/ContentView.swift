//
//  ContentView.swift
//  CAGR
//
//  Created by Yinan Qiu on 4/3/21.
//

import SwiftUI

struct ContentView: View {
    
//    @StateObject var viewModel = ContentViewModel()
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
                    .frame(width: frvW, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(frvCR)
                    .offset(y: frvY)
                    .animation(.easeInOut)
                    .onTapGesture {
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
                    .frame(width: tovW, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(tovCR)
                    .offset(y: tovY)
                    .animation(.easeInOut)
                    .onTapGesture {
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
                    .frame(width: yrsW, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(yrsCR)
                    .offset(y: yrsY)
                    .animation(.easeInOut)
                    .onTapGesture {
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
                    .frame(width: cagrW, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(cagrCR)
                    .offset(y: cagrY)
                    .animation(.easeInOut)
                    .onTapGesture {
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
                .background(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
