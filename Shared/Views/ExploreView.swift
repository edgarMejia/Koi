//
//  ExploreView.swift
//  Koi
//
//  Created by Edgar Mejía on 21/6/21.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
            }
            .navigationTitle("Explore")
            .toolbar {
                Button(action: {
                    print("button pressed")
                }) {
                    Image(systemName: "globe")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
