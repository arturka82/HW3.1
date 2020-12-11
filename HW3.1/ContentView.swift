//
//  ContentView.swift
//  HW3.1
//
//  Created by Artur Gedakyan on 10.12.2020.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

let green = TraficLihgtCircle(color: .green)
let yellow = TraficLihgtCircle(color: .yellow)
let red = TraficLihgtCircle(color: .red)


struct ContentView: View {
    var body: some View {
        VStack {
            green.opacity(0.3)
            yellow.opacity(0.3)
            red.opacity(0.3)
            
            Spacer()
            
            Button("Switch") {
                print("Work")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
