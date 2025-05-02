//
//  BorderedRectangleView.swift
//  Chart Demo 1
//
//  Created by Ronjie Diafante Man-on on 5/2/25.
//

import SwiftUI

struct BorderedRectangleView: View {
    let color: Color
    let barWidth: CGFloat
    let height: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(color)
            .frame(width: barWidth, height: height)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 0.7)
            }
    }
}

#Preview {
    BorderedRectangleView(
        color: Color.red,
        barWidth: 60,
        height: 10
    )
}
