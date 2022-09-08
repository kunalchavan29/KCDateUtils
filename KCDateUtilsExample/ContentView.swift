//
//  ContentView.swift
//  KCDateUtilsExample
//
//  Created by A118830248 on 07/09/22.
//

import SwiftUI
import KCDateUtils

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        Text("\(Date().weeksFrom(date: Date.init(timeIntervalSince1970: 0)))")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
