//
//  ContentView.swift
//  AppStore
//
//  Created by Eunyeong Kim on 2022/04/15.
//

import SwiftUI

struct BaseView: View {
    var body: some View {
        TabView {
            ForEach(Tab.allCases, id: \.self) { tab in
                tab.view
                    .tabItem {
                        Image(systemName: tab.systemImageName)
                        Text(tab.title)
                    }
            }
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
