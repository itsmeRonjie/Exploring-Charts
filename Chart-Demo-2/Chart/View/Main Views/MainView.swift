//
//  ContentView.swift
//  Chart Demo 2
//
//  Created by Ronjie Diafante Man-on on 5/2/25.
//

import SwiftUI
import Charts

struct MainView: View {
    let min = 0.0
    let max = 200.0
    var body: some View {
        VStack {
            Text("Welcome to Charts!")
                .font(.largeTitle)
            
            Chart {
                BarMark(
                    x: .value("Day", "Sun"),
                    y: .value("Sales", 100)
                )
                .annotation {
                    Image(systemName: "figure.walk.circle.fill")
                        .foregroundStyle(Color.blueViolet)
                        .fontWeight(.bold)
                        .font(.title)
                }
                
                BarMark(
                    x: .value("Day", "Mon"),
                    y: .value("Sales", 80)
                )
                BarMark(
                    x: .value("Day", "Tue"),
                    y: .value("Sales", 50)
                )
                BarMark(
                    x: .value("Day", "Wed"),
                    y: .value("Sales", 75)
                )
                
                BarMark(
                    x: .value("Day", "Thu"),
                    y: .value("Sales", 100)
                )
                
                BarMark(
                    x: .value("Day", "Fri"),
                    y: .value("Sales", 10)
                )
                
                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 50)
                )
            }
            .chartYScale(domain: min...max)
            .chartXAxis {
                AxisMarks(position: .bottom)
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
