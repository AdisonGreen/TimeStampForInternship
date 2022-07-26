//
//  MainTabBarView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/26/22.
//

import SwiftUI

struct MainTabBarView: View {
    var body: some View {
        TabView {
            TenButtonsView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Buttons View")
                }
            
            DataView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Data View")
                }
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
