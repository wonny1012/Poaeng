//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by kwon ji won on 2022/04/05.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("wonny")
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(.blue,lineWidth : 4)
            }
            .shadow(radius:7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
