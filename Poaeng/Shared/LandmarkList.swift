//
//  LandmarkList.swift
//  Landmarks
//
//  Created by kwon ji won on 2022/04/06.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List (landmarks, id:\.id){ landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}
//list 표현 방법 id:\.id(id 배열 전체..?)
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
