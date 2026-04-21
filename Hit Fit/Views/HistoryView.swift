//
//  HistoryView.swift
//  Hit Fit
//
//  Created by Mustafa Nour on 20/04/2026.
//

import SwiftUI

struct HistoryView: View {
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
    
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .padding()
            //exercise history
            Form {
                Section(
                    header:
                        Text(today.formatted(.dateTime.month(.abbreviated).day()))
                        .font(.headline)) {
                            ForEach(exercises1, id: \.self) { exercise in
                                Text(exercise)
                            }
                            
                        }
                Section(
                 header:
                 Text(yesterday.formatted(.dateTime.month(.abbreviated).day()))
                 .font(.headline)) {
                     ForEach(exercises2, id: \.self) { exercise in
                         Text(exercise)
                     }
                 }
            }

        }
    }
}

#Preview {
    HistoryView()
}
