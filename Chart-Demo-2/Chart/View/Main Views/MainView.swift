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
                .foregroundStyle(by: .value("Day", "Sunday"))
                .clipShape(
                    .rect(
                        cornerRadii: .init(
                            topLeading: 12,
                            topTrailing: 12
                        )
                    )
                )
                
                BarMark(
                    x: .value("Day", "Mon"),
                    y: .value("Sales", 80)
                )
                .foregroundStyle(by: .value("Day", "Monday"))
                
                BarMark(
                    x: .value("Day", "Tue"),
                    y: .value("Sales", 50)
                )
                .foregroundStyle(by: .value("Day", "Tuesday"))
                
                BarMark(
                    x: .value("Day", "Tue"),
                    y: .value("Sales", 73)
                )
                .foregroundStyle(by: .value("Day", "Tuesday Group 1"))
                
                BarMark(
                    x: .value("Day", "Wed"),
                    y: .value("Sales", 75)
                )
                .foregroundStyle(by: .value("Day", "Wednesday"))
                
                BarMark(
                    x: .value("Day", "Thu"),
                    y: .value("Sales", 150)
                )
                .foregroundStyle(by: .value("Day", "Thursday"))
                
                BarMark(
                    x: .value("Day", "Fri"),
                    y: .value("Sales", 10)
                )
                .foregroundStyle(by: .value("Day", "Friday"))
                
                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 21)
                )
                .foregroundStyle(by: .value("Day", "Saturday"))

                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 50)
                )
                .foregroundStyle(by: .value("Day", "Saturday Group 1"))
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
