//
//  ContentView.swift
//  CAGR
//
//  Created by Yinan Qiu on 4/3/21.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height
let CAGRPadding: CGFloat = screenHeight * 0.03
let CAGRCellHeight: CGFloat = screenHeight * 0.12
let CAGRCornerRadius: CGFloat = 18
let CAGRCellColor = Color.white

struct ContentView: View {
    var body: some View {
        ZStack {
            CAGRCellColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack(alignment: .top) {
                    Color.gray
                    
                    VStack {
                    }
                    .frame(width: screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(CAGRCornerRadius)
                    .offset(y: CAGRCellHeight + CAGRPadding)
                    .onTapGesture {
                        print("1/f(x)=From")
                    }
                    
                    VStack {
                    }
                    .frame(width: screenWidth - CAGRPadding * 2, height: CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(CAGRCornerRadius)
                    .offset(y: CAGRCellHeight * 2 + CAGRPadding * 2)
                    .onTapGesture {
                        print("2/f(x)=From")
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
                    .frame(width: screenWidth, height:  CAGRCellHeight)
                    .background(Color.white)
                    .cornerRadius(0)
                    .padding(.top, 0)
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
