//
//  ContentView.swift
//  MyTest
//
//  Created by me developer on 23/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Image(systemName: "paperplane.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, peter")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
