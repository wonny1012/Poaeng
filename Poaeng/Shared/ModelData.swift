//
//  ModelData.swift
//  Landmarks
//
//  Created by kwon ji won on 2022/04/05.
//

import Foundation

var landmarks : [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename : String) -> T{
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bunble:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//JSON 데이터를 가져오는 로드 메서드 생성
//JSIN Data : 표준 텍스트 기반 형식


