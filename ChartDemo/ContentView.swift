//
//  ContentView.swift
//  ChartDemo
//
//  Created by calum couch on 2023-05-24.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    let ViewMonth: [ViewMonth] = [
        .init(date:Date.from(year: 2023, month: 1, day: 1), goals: 100),
        .init(date:Date.from(year: 2023, month: 2, day: 1), goals: 101),
        .init(date:Date.from(year: 2023, month: 3, day: 1), goals: 90),
        .init(date:Date.from(year: 2023, month: 4, day: 1), goals: 39),
        .init(date:Date.from(year: 2023, month: 5, day: 1), goals: 293),
        .init(date:Date.from(year: 2023, month: 6, day: 1), goals: 134),
        .init(date:Date.from(year: 2023, month: 7, day: 1), goals: 424),
        .init(date:Date.from(year: 2023, month: 8, day: 1), goals: 103),
        .init(date:Date.from(year: 2023, month: 9, day: 1), goals: 104),
        .init(date:Date.from(year: 2023, month: 10, day: 1), goals: 100),
        .init(date:Date.from(year: 2023, month: 11, day: 1), goals: 67),
        .init(date:Date.from(year: 2023, month: 12, day: 1), goals: 98)
        
    ]
    var body: some View {
        VStack {
            Text("Connor Mcdavid Goals 2022-2023 season")
                .font(.title)
                .fontWeight(.bold)
            Chart {
                ForEach(ViewMonth) { viewMonth in
                    BarMark(x: .value("Month", viewMonth.date, unit: .month),
                            y: .value("Goals", viewMonth.goals)
                            )
                }
                .foregroundStyle(Color.red)
                
                }
            .frame(height: 300)
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct ViewMonth: Identifiable {
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

