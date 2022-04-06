//
//  MainView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/06.
//

import SwiftUI

struct MainView: View {
    let data = ["IT", "자동차", "물류", "소비재", "식음료", "금융", "기반시설", "자원변형", "서비스"]
    let columns: [GridItem] = [
        GridItem(.fixed(80), spacing: nil, alignment: nil),
        GridItem(.fixed(80), spacing: nil, alignment: nil),
        GridItem(.fixed(80), spacing: nil, alignment: nil),
    ]
    var body: some View {
        ScrollView {
            VStack{
                Image("img_event")
                    .resizable(capInsets: EdgeInsets(top: -9.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 300.0, height: 100.0)
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: nil,
                    pinnedViews: [],
                    content: {
                        ForEach(data, id: \.self) { index in
                            VStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.gray)
                                    .frame(height: 80)
                                Text(index)
                            }
                        }
                    }
                )
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 2))
                .padding(30)
            }
            RecommendView()
            
            VStack{
                Rectangle()
                    .padding()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct RecommendView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: nil){
            HStack{
                Text("추천멘토")
                    .font(.title3)
                Spacer()
                Button(action : {
                  
                }) {
                    Text("전체보기")
                        .font(.system(.headline))
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                        .padding()
                }
            }
            Rectangle().frame(height: 0)
            HStack{
                VStack{
                    Image("감자")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("감자")
                    Text("디자인")
                        .foregroundColor(.secondary)
                    Text("애플")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                VStack{
                    Image("고구마")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("고구마")
                    Text("개발자")
                        .foregroundColor(.secondary)
                    Text("구글")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                VStack{
                    Image("당근")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("당근")
                    Text("기획자")
                        .foregroundColor(.secondary)
                    Text("신세계")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                VStack{
                    Image("포메")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(lineWidth: 3).foregroundColor(Color.black))
                    Text("포메")
                    Text("귀여움")
                        .foregroundColor(.secondary)
                    Text("우리집")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
            }
        }
        .padding()
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 30)
            .stroke(Color.black, lineWidth: 2))
    }
}
