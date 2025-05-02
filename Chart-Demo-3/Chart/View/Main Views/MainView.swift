//
//  ContentView.swift
//  Chart Demo 3
//
//  Created by Ronjie Diafante Man-on on 5/2/25.
//

import SwiftUI
import Charts

struct MainView: View {
    let dailySales: [DailySales]
    let barColors: [Color]
    let min: Double
    let max: Double
    let xAxisMarkPosition: AxisMarkPosition = .bottom
    let yAxisMarkPosition: AxisMarkPosition = .leading
    
    @State private var isVerticalChart = true
    
    var body: some View {
        VStack {
            Text("Chart Demo 3!")
                .font(.title)
                .fontWeight(.semibold)
            
            Chart {
                ForEach(dailySales) { chart in
                    BarMark(
                        x: .value("Day", chart.day),
                        y: .value("Sales", chart.sales)
                    )
                    .foregroundStyle(by: .value("Day", chart.day))
                }
            }
        }
        .padding()
    }
}

#Preview {
    MainView(
        dailySales: defaultDailySales,
        barColors: defaultBarColors,
        min: 0.0,
        max: 700.0
    )
}
