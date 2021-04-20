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
    
    @State private var isInputting = false
    
    var body: some View {
        
        ZStack {
            Color("cell")
                .edgesIgnoringSafeArea(.top)
            Color("bg")
                .edgesIgnoringSafeArea(.bottom)
            
            GeometryReader { geometry in
                VStack(spacing: isInputting ? 0 : geometry.size.height * bottomSectionPercent + 40) {
                    ZStack(alignment: .top) { //main content area aka area above number pad
                        Color("bg")
                            .onAppear {
                                cellHeight = geometry.size.height * topSectionPercent / 4 - CAGRPadding
                                frvY = cellHeight + CAGRPadding
                                tovY = (cellHeight + CAGRPadding) * 2
                                yrsY = (cellHeight + CAGRPadding) * 3
                                cagrY = 0
                            }
                            .onTapGesture {
                                isInputting = false
                            }
                        
                        GeometryReader { geometry in
                            HStack(spacing: frvIsOutput ? 0 : CAGRGap) {
                                Text("From")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: CAGRLabelFrameWidth, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        if frvIsOutput { isInputting = false }
                                        frvIsOutput = true
                                        tovIsOutput = false
                                        yrsIsOutput = false
                                        cagrIsOutput = false
                                        frvY = 0
                                        tovY = cellHeight + CAGRPadding
                                        yrsY = (cellHeight + CAGRPadding) * 2
                                        cagrY = (cellHeight + CAGRPadding) * 3
                                    }
                                Text("10")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        isInputting = frvIsOutput ? false : true
                                    }
                            }
                        }
                        .frame(width: frvIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .cornerRadius(frvIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: frvY)
                        
                        GeometryReader { geometry in
                            HStack(spacing: tovIsOutput ? 0 : CAGRGap) {
                                Text("To")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: CAGRLabelFrameWidth, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        if tovIsOutput { isInputting = false }
                                        frvIsOutput = false
                                        tovIsOutput = true
                                        yrsIsOutput = false
                                        cagrIsOutput = false
                                        frvY = cellHeight + CAGRPadding
                                        tovY = 0
                                        yrsY = (cellHeight + CAGRPadding) * 2
                                        cagrY = (cellHeight + CAGRPadding) * 3
                                    }
                                Text("69")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        isInputting = tovIsOutput ? false : true
                                    }
                            }
                        }
                        .frame(width: tovIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .cornerRadius(tovIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: tovY)
                        
                        GeometryReader { geometry in
                            HStack(spacing: yrsIsOutput ? 0 : CAGRGap) {
                                Text("Years")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: CAGRLabelFrameWidth, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        if yrsIsOutput { isInputting = false }
                                        frvIsOutput = false
                                        tovIsOutput = false
                                        yrsIsOutput = true
                                        cagrIsOutput = false
                                        frvY = cellHeight + CAGRPadding
                                        tovY = (cellHeight + CAGRPadding) * 2
                                        yrsY = 0
                                        cagrY = (cellHeight + CAGRPadding) * 3
                                    }
                                Text("5")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        isInputting = yrsIsOutput ? false : true
                                    }
                            }
                        }
                        .frame(width: yrsIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .cornerRadius(yrsIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: yrsY)
                        
                        GeometryReader { geometry in
                            HStack(spacing: cagrIsOutput ? 0 : CAGRGap) {
                                Text("CAGR")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForLabel, size: CAGRFontSizeForLabel))
                                    .frame(width: CAGRLabelFrameWidth, height: geometry.size.height)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        if cagrIsOutput { isInputting = false }
                                        frvIsOutput = false
                                        tovIsOutput = false
                                        yrsIsOutput = false
                                        cagrIsOutput = true
                                        frvY = cellHeight + CAGRPadding
                                        tovY = (cellHeight + CAGRPadding) * 2
                                        yrsY = (cellHeight + CAGRPadding) * 3
                                        cagrY = 0
                                    }
                                Text("47%")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFontForContent, size: CAGRFontSizeForContent))
                                    .padding(.trailing, CAGRPadding)
                                    .frame(maxWidth: .infinity, maxHeight: geometry.size.height, alignment: .trailing)
                                    .background(Color("cell"))
                                    .onTapGesture {
                                        isInputting = cagrIsOutput ? false : true
                                    }
                            }
                        }
                        .frame(width: cagrIsOutput ? UIScreen.main.bounds.size.width : CAGRCellWidth,
                               height: cellHeight)
                        .cornerRadius(cagrIsOutput ? 0 : CAGRCornerRadius)
                        .offset(y: cagrY)
                    }
                    .frame(width: geometry.size.width,
                           height: geometry.size.height * topSectionPercent)
                                        
                    ZStack { //custom number pad
                        Color("cell")
                            .edgesIgnoringSafeArea(.bottom)
                        VStack(spacing: CAGRGap) {
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
                                Image(systemName: "delete.left")
                                    .font(Font.system(size: 18, weight: .light))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(Color("cell"))
                            }
                        }
                        .font(.custom(CAGRFontForNumberPad, size: CAGRFontSizeForNumberPad))
                        .foregroundColor(Color("text"))
                        .background(Color("bg"))
                    }
                }
            }
            .animation(.easeInOut)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
