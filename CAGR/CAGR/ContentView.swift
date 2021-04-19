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
    @State private var cagrW = UIScreen.main.bounds.size.width
    
    @State private var frvCR = CAGRCornerRadius
    @State private var tovCR = CAGRCornerRadius
    @State private var yrsCR = CAGRCornerRadius
    @State private var cagrCR: CGFloat = 0
    
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
                VStack {
                    ZStack(alignment: .top) { //main content area aka area above number pad
                        Color("bg")
                            .onAppear {
                                cellHeight = geometry.size.height * topSectionPercent / 4 - CAGRPadding
                                frvY = cellHeight + CAGRPadding
                                tovY = (cellHeight + CAGRPadding) * 2
                                yrsY = (cellHeight + CAGRPadding) * 3
                                cagrY = 0
                            }

                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("from")
                                    .foregroundColor(Color("text"))
                                    .font(.custom(CAGRFont, size: 24))
                                Image(systemName: "arrow.up.circle")
                                    .font(Font.title2.weight(.thin))
                            }
                            Spacer()
                            Text("147")
                                .foregroundColor(Color("text"))
                                .font(.custom(CAGRFont, size: 64))
                        }
                        .padding(CAGRPadding)
                        .frame(width: frvW, height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(frvCR)
                        .offset(y: frvY)
                        .animation(.easeInOut)
                        .onTapGesture {
                            frvW = UIScreen.main.bounds.size.width
                            tovW = CAGRCellWidth
                            yrsW = CAGRCellWidth
                            cagrW = CAGRCellWidth
                            frvCR = 0
                            tovCR = CAGRCornerRadius
                            yrsCR = CAGRCornerRadius
                            cagrCR = CAGRCornerRadius
                            frvY = 0
                            tovY = cellHeight + CAGRPadding
                            yrsY = (cellHeight + CAGRPadding) * 2
                            cagrY = (cellHeight + CAGRPadding) * 3
                        }

                        VStack {
                            Text("to")
                                .foregroundColor(Color("text"))
                                .font(.custom(CAGRFont, size: 24))
                        }
                        .frame(width: tovW, height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(tovCR)
                        .offset(y: tovY)
                        .animation(.easeInOut)
                        .onTapGesture {
                            frvW = CAGRCellWidth
                            tovW = UIScreen.main.bounds.size.width
                            yrsW = CAGRCellWidth
                            cagrW = CAGRCellWidth
                            frvCR = CAGRCornerRadius
                            tovCR = 0
                            yrsCR = CAGRCornerRadius
                            cagrCR = CAGRCornerRadius
                            frvY = cellHeight + CAGRPadding
                            tovY = 0
                            yrsY = (cellHeight + CAGRPadding) * 2
                            cagrY = (cellHeight + CAGRPadding) * 3
                        }

                        VStack {
                            Text("years")
                                .foregroundColor(Color("text"))
                                .font(.custom(CAGRFont, size: 24))
                        }
                        .frame(width: yrsW, height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(yrsCR)
                        .offset(y: yrsY)
                        .animation(.easeInOut)
                        .onTapGesture {
                            frvW = CAGRCellWidth
                            tovW = CAGRCellWidth
                            yrsW = UIScreen.main.bounds.size.width
                            cagrW = CAGRCellWidth
                            frvCR = CAGRCornerRadius
                            tovCR = CAGRCornerRadius
                            yrsCR = 0
                            cagrCR = CAGRCornerRadius
                            frvY = cellHeight + CAGRPadding
                            tovY = (cellHeight + CAGRPadding) * 2
                            yrsY = 0
                            cagrY = (cellHeight + CAGRPadding) * 3
                        }

                        VStack {
                            Text("CAGR")
                                .foregroundColor(Color("text"))
                                .font(.custom(CAGRFont, size: 24))
                        }
                        .frame(width: cagrW, height: cellHeight)
                        .background(Color("cell"))
                        .cornerRadius(cagrCR)
                        .offset(y: cagrY)
                        .animation(.easeInOut)
                        .onTapGesture {
                            frvW = CAGRCellWidth
                            tovW = CAGRCellWidth
                            yrsW = CAGRCellWidth
                            cagrW = UIScreen.main.bounds.size.width
                            frvCR = CAGRCornerRadius
                            tovCR = CAGRCornerRadius
                            yrsCR = CAGRCornerRadius
                            cagrCR = 0
                            frvY = cellHeight + CAGRPadding
                            tovY = (cellHeight + CAGRPadding) * 2
                            yrsY = (cellHeight + CAGRPadding) * 3
                            cagrY = 0
                        }
                    }
                    .frame(width: geometry.size.width,
                           height: geometry.size.height * topSectionPercent)
                    
                    HStack { //custom number pad
                    }
                    .frame(width: geometry.size.width,
                           height: geometry.size.height * bottomSectionPercent)
                    .background(Color("cell"))
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
