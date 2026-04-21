//
//  ExerciseView.swift
//  Hit Fit
//
//  Created by Mustafa Nour on 05/03/2026.
//

import SwiftUI
import AVKit
struct ExerciseView: View {
    let index: Int
    var exercise : Exercise {
        Exercise.exercises[index]
    }
    let interval: TimeInterval = 30


    var body: some View {
        GeometryReader { geomtry in
            VStack {
                HeaderView(exerciseName: exercise.exerciseName)
                    .padding()
                
                // MARK: - Playing a video
                if let url = URL(string: "\(exercise.videoName).mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: 300)
                        .padding(.horizontal)
                } else {
                    Text("Couldn't find \(exercise.videoName).mp4")
                        .foregroundColor(.red)
                }
                
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: geomtry.size.height * 0.07))
                Button("Start/Done") {}
                    .font(.title3)
                    .padding()
                RatingView()
                    .padding()
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(index: 0)
}


struct HeaderView: View {
    var exerciseName: String
    
    var body: some View {
        VStack {
            Text(exerciseName)
            .font(.largeTitle)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .padding(.bottom)
        }
    }
}
