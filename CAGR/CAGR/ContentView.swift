//
//  ContentView.swift
//  cagr
//
//  Created by Yinan Qiu on 4/3/21.
//

import SwiftUI

struct ContentView: View {
    
    //    @StateObject var viewModel = ContentViewModel()
    
    @State private var frvIsOutput = false
    @State private var tovIsOutput = false
    @State private var yrsIsOutput = false
    @State private var cagrIsOutput = true
    
    @State private var cellHeight: CGFloat = 0
    
    @State private var frvY: CGFloat = 0
    @State private var tovY: CGFloat = 0
    @State private var yrsY: CGFloat = 0
    @State private var cagrY: CGFloat = 0
    
    var body: some View {
        
        ZStack {
            Color("cell")
                .edgesIgnoringSafeArea(.all)
            
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    ZStack(alignment: .top) { //main content area aka area above number pad
                        Color("bg")
                            .onAppear {
                                cellHeight = geometry.size.height * topSectionPercent / 4 - CAGRPadding
                                frvY = cellHeight + CAGRPadding
                                tovY = (cellHeight + CAGRPadding) * 2
                                yrsY = (cellHeight + CAGRPadding) * 3
                                cagrY = 0
                            }
                        
                        GeometryReader { geometry in
                            HStack {
                                Text("From")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: geometry.size.height, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        frvIsOutput = true
                                        tovIsOutput = false
                                        yrsIsOutput = false
                                        cagrIsOutput = false
                                        frvY = 0
                                        tovY = cellHeight + CAGRPadding
                                        yrsY = (cellHeight + CAGRPadding) * 2
                                        cagrY = (cellHeight + CAGRPadding) * 3
                                    }
                                Spacer()
                                    .frame(width: CAGRGap, height: geometry.size.height)
                                    .background(Color(frvIsOutput ? "cell" : "bg"))
                                Text("10")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                            }
                        }
                        .frame(width: frvIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(frvIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: frvY)
                        .animation(.easeInOut)
                        
                        GeometryReader { geometry in
                            HStack {
                                Text("To")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: geometry.size.height, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        frvIsOutput = false
                                        tovIsOutput = true
                                        yrsIsOutput = false
                                        cagrIsOutput = false
                                        frvY = cellHeight + CAGRPadding
                                        tovY = 0
                                        yrsY = (cellHeight + CAGRPadding) * 2
                                        cagrY = (cellHeight + CAGRPadding) * 3
                                    }
                                Spacer()
                                    .frame(width: CAGRGap, height: geometry.size.height)
                                    .background(Color(tovIsOutput ? "cell" : "bg"))
                                Text("69")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                            }
                        }
                        .frame(width: tovIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(tovIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: tovY)
                        .animation(.easeInOut)
                        
                        GeometryReader { geometry in
                            HStack {
                                Text("Years")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: geometry.size.height, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        frvIsOutput = false
                                        tovIsOutput = false
                                        yrsIsOutput = true
                                        cagrIsOutput = false
                                        frvY = cellHeight + CAGRPadding
                                        tovY = (cellHeight + CAGRPadding) * 2
                                        yrsY = 0
                                        cagrY = (cellHeight + CAGRPadding) * 3
                                    }
                                Spacer()
                                    .frame(width: CAGRGap, height: geometry.size.height)
                                    .background(Color(yrsIsOutput ? "cell" : "bg"))
                                Text("5")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                            }
                        }
                        .frame(width: yrsIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(yrsIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: yrsY)
                        .animation(.easeInOut)
                        
                        GeometryReader { geometry in
                            HStack {
                                Text("CAGR")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: geometry.size.height, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        frvIsOutput = false
                                        tovIsOutput = false
                                        yrsIsOutput = false
                                        cagrIsOutput = true
                                        frvY = cellHeight + CAGRPadding
                                        tovY = (cellHeight + CAGRPadding) * 2
                                        yrsY = (cellHeight + CAGRPadding) * 3
                                        cagrY = 0
                                    }
                                Spacer()
                                    .frame(width: CAGRGap, height: geometry.size.height)
                                    .background(Color(cagrIsOutput ? "cell" : "bg"))
                                Text("47%")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                            }
                        }
                        .frame(width: cagrIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(cagrIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: cagrY)
                        .animation(.easeInOut)
                    }
                    .frame(width: geometry.size.width,
                           height: geometry.size.height * topSectionPercent)
                    
                    VStack(spacing: CAGRGap) { //custom number pad
                        HStack(spacing: CAGRGap) {
                            Text("1")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("2")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("3")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                        }
                        HStack(spacing: CAGRGap) {
                            Text("4")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("5")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("6")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                        }
                        HStack(spacing: CAGRGap) {
                            Text("7")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("8")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("9")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                        }
                        HStack(spacing: CAGRGap) {
                            Text(".")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("0")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                            Text("del")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color("cell"))
                        }
                    }
                    .background(Color("bg"))
                    .font(.custom(CAGRFontForNumberPad, size: CAGRFontSizeForNumberPad))
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
