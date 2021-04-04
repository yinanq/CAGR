//
//  ContentView.swift
//  CAGR
//
//  Created by Yinan Qiu on 4/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isMars = false
    @State private var output = Output.cagr
    
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
                    .frame(width: isMars ? screenWidth : screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .background(Color.red)
//                    .cornerRadius(CAGRCornerRadius)
                    .cornerRadius(isMars ? 0 : CAGRCornerRadius)
//                    .offset(y: CAGRCellHeight + CAGRPadding)
                    .offset(y: isMars ? 0 : CAGRCellHeight + CAGRPadding)
                    .animation(.easeInOut)
                    .onTapGesture {
                        print("1/f(x)=From")
                        isMars.toggle()
                    }
                    
                    VStack {
                    }
                    .frame(width: screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(CAGRCornerRadius)
                    .offset(y: CAGRCellHeight * 2 + CAGRPadding * 2)
                    .onTapGesture {
                        print("2/f(x)=To")
                    }
                    
                    VStack {
                    }
                    .frame(width: screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(CAGRCornerRadius)
                    .offset(y: CAGRCellHeight * 3 + CAGRPadding * 3)
                    .onTapGesture {
                        print("3/f(x)=Years")
                    }
                    
                    VStack {
                    }
//                    .frame(width: screenWidth, height:  CAGRCellHeight)
                    .frame(width: isMars ? screenWidth - CAGRPadding * 2 : screenWidth, height:  CAGRCellHeight)
                    .background(Color.white)
//                    .cornerRadius(0)
                    .cornerRadius(isMars ? CAGRCornerRadius : 0)
//                    .offset(y: 0)
                    .offset(y: isMars ? CAGRCellHeight + CAGRPadding : 0)
                    .animation(.easeInOut)
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
