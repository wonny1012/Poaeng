//
//  ContentView.swift
//  Poaeng
//
//  Created by Taehwan Kim on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("메인")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("검색")
                }
            ReservationView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("예약")
                }
                    
            MyPageView()
                .tabItem {
                    Image(systemName: "person")
                    Text("마이페이지")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
