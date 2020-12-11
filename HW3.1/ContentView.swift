//
//  ContentView.swift
//  HW3.1
//
//  Created by Artur Gedakyan on 10.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State var countColor = 0
    
    var body: some View {
        
        ZStack {
            Color(.black)
            .ignoresSafeArea()
            VStack {
                TraficLihgtCircle(color: .red)
                    .opacity(countColor == 0 ? 1.0 : 0.3)
                TraficLihgtCircle(color: .yellow)
                    .opacity(countColor == 1 ? 1.0 : 0.3)
                TraficLihgtCircle(color: .green)
                    .opacity(countColor == 2 ? 1.0 : 0.3)
                
                Spacer()
                
                Button(action: {
                    countColor += 1
                    if countColor == 3 {
                        countColor = 0
                    }
                    
                }, label: {
                    let lable1 = (countColor == 2 ? "Switch" : "Start")
                    Text(lable1)
                        
                        .font(.largeTitle)
                        .tracking(5)
                        .padding(.all, 15)
                        .padding(.horizontal, 50)
                        .shadow(color: Color.black, radius: 6, x: 3, y: 3)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
                }).padding(.bottom, 50)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
