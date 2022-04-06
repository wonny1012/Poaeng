//
//  Landmark.swift
//  Landmarks
//
//  Created by kwon ji won on 2022/04/05.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable {
    var id : Int
    var name : String
    var park : String
    var state : String
    var description: String
//var:함수 형식을 정의한다.
    
    private var imageName : String
//접근 수준을 비공개 접근 수준으로 한다.
    var image: Image {
        Image(imageName)
    }
    
//이미지 위치 선정
    private var coordinates: Coordinates
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude : coordinates.latitude,
            longitude : coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

