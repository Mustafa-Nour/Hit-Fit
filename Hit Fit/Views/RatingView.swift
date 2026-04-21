//
//  RatingView.swift
//  Hit Fit
//
//  Created by Mustafa Nour on 20/04/2026.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach (0 ..< 5 ) { _ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundStyle(.gray)
                    .font(.largeTitle)
                
            }
        }
    }
}

#Preview {
    RatingView()
        .previewLayout(.sizeThatFits)
}
