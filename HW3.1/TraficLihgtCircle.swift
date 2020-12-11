//
//  TraficLihgtCircle.swift
//  HW3.1
//
//  Created by Artur Gedakyan on 10.12.2020.
//

import SwiftUI

struct TraficLihgtCircle: View {
    var color: Color
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
}

struct TraficLihgtCircle_Previews: PreviewProvider {
    static var previews: some View {
        TraficLihgtCircle(color: .red)
    }
}
