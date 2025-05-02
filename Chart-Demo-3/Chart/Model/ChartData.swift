//
//  ChartData.swift
//  Chart-Demo-3
//
//  Created by Ronjie Diafante Man-on on 5/2/25.
//

import SwiftUI

enum ChartType {
    case bar, line, area
}

struct DailySales: Identifiable {
    let id = UUID()
    let day: String
    let sales: Int
}

let defaultDailySales: [DailySales] = [
    .init(day: "Mon", sales: 43),
    .init(day: "Tue", sales: 101),
    .init(day: "Wed", sales: 203),
    .init(day: "Thu", sales: 123),
    .init(day: "Fri", sales: 180),
    .init(day: "Sat", sales: 73),
    .init(day: "Sun", sales: 13),
]

let defaultBarColors: [Color] = [
    .pink,
    .green,
    .mint,
    .purple,
    .indigo,
    .red,
    .brown
]
