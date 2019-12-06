//
//  ContentView.swift
//  IdentifyingViewsWithUsefulLabels
//
//  Created by ramil on 06.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "christmas-4645449_640",
        "coffee-beans-4668463_640",
        "mountain-hut-4664186_640",
        "panda-4418773_640",
        "snow-4668099_640",
        "winter-4551699_640"
    ]
    
    let labels = [
        "Mountains",
        "Coffe beans",
        "Snow forest",
        "Red panda",
        "Snow city street",
        "Christmas gifts"
    ]
    
    @State private var selectedPicture = Int.random(in: 0...5)
    var body: some View {
        Image(pictures[selectedPicture])
        .resizable()
        .scaledToFit()
        .accessibility(label: Text(labels[selectedPicture]))
        .accessibility(addTraits: .isButton)
        .accessibility(removeTraits: .isImage)
        .onTapGesture {
            self.selectedPicture = Int.random(in: 0...5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
