//
//  ContentView.swift
//  Shared
//
//  Created by kwon ji won on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .font(.title)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
            HStack {
                Text("USA")
                    .padding()
                .font(.subheadline)
                Spacer()
                Text("California")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
