//
//  Chart_Demo_3App.swift
//  Chart Demo 3
//
//  Created by Ronjie Diafante Man-on on 5/2/25.
//

import SwiftUI

@main
struct Chart_Demo_3App: App {
    var body: some Scene {
        WindowGroup {
            MainView(
                dailySales: defaultDailySales,
                barColors: defaultBarColors,
                min: 0.0,
                max: 700.0
            )
        }
    }
}
