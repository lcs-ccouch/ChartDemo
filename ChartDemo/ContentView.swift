//
//  ContentView.swift
//  ChartDemo
//
//  Created by calum couch on 2023-05-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ViewYears: Identifiable {
    let id = UUID()
    let date: Date
    let goals: Int
}
extension Date {
    static func from(year:Int, month: Int, day: Int)-> Date {
        let componenets = DateComponents(year: year, month: month, day:day)
        return Calendar.current.date(from: componenets)!
    }
}
