//
//  Exercise.swift
//  Hit Fit
//
//  Created by Mustafa Nour on 08/03/2026.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseEnum : String {
        case squat = "Squat"
        case stepUp = "Step up"
        case burpee = "Burpee"
        case sunSalute = "Sun Salute"
    }
}

extension Exercise {
    static let exercises = [
        Exercise(exerciseName: ExerciseEnum.squat.rawValue, videoName: "https://clips.vorwaerts-gmbh.de/big_buck_bunny"),
        Exercise(exerciseName: ExerciseEnum.stepUp.rawValue, videoName: "https://share.google/pWkm3HljHF848AQ7p"),
        Exercise(exerciseName: ExerciseEnum.burpee.rawValue, videoName: "https://share.google/NBKbFQlh3Lf1jvHEn"),
        Exercise(exerciseName: ExerciseEnum.sunSalute.rawValue, videoName: "https://share.google/EDxX9qTGf9hiKxQoX")
    ]
}
