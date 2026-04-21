//
//  ContentView.swift
//  Hit Fit
//
//  Created by Mustafa Nour on 02/03/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            ForEach(Exercise.exercises.indices, id: \.self) { index in
                ExerciseView(index: index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
