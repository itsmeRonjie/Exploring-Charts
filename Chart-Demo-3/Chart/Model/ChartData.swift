//
//  ChartData.swift
//  Chart-Demo-3
//
//  Created by Ronjie Diafante Man-on on 5/2/25.
//

import Foundation

struct DailySales: Identifiable {
    let id = UUID()
    let day: String
    let sales: Int
}

let defaultDailySales: [DailySales] = [
    .init(day: "Mon", sales: 100),
    .init(day: "Tue", sales: 120),
    .init(day: "Wed", sales: 140),
    .init(day: "Thu", sales: 160),
    .init(day: "Fri", sales: 180),
    .init(day: "Sat", sales: 200),
    .init(day: "Sun", sales: 220),
]

