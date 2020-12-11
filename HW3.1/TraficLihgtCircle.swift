//
//  TraficLihgtCircle.swift
//  HW3.1
//
//  Created by Artur Gedakyan on 10.12.2020.
//

import SwiftUI

struct TraficLihgtCircle: View {
    let color: UIColor
    
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct TraficLihgtCircle_Previews: PreviewProvider {
    static var previews: some View {
        TraficLihgtCircle(color: .red)
    }
}
