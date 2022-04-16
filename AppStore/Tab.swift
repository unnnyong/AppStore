//
//  Tab.swift
//  AppStore
//
//  Created by Eunyeong Kim on 2022/04/16.
//

import SwiftUI

enum Tab: CaseIterable {
    case today
    case game
    case app
    case arcade
    case search
 
    var title: String {
        switch self {
        case .today: return "투데이"
        case .game: return "게임"
        case .app: return "앱"
        case .arcade: return "Arcade"
        case .search: return "검색"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .today: return "1.square.fill"
        case .game: return "1.square.fill"
        case .app: return "1.square.fill"
        case .arcade: return "1.square.fill"
        case .search: return "1.square.fill"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .today: TodayView()
        case .game: GameView()
        case .app: AppView()
        case .arcade: ArcadeView()
        case .search: SearchView()
        }
    }
}
