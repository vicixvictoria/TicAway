//
//  LogbookView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 16.06.23.
//

import SwiftUI

struct LogbookView: View {
    @State private var selectedTab: Int = 0
    
    
    let tabs: [Tab] = [
            .init(icon: Image(systemName: "calendar"), title: "Tic Logs"),
            .init(icon: Image(systemName: "heart"), title: "New Tic Log"),
        ]
    
    init() {
            UINavigationBar.appearance().barTintColor = UIColor(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
            UINavigationBar.appearance().isTranslucent = false
        }
    
    var body: some View {
        //NavigationView {
                    GeometryReader { geo in
                        VStack(spacing: 0) {
                            // Tabs
                            Tabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)

                            // Views
                            TabView(selection: $selectedTab,
                                    content: {
                                        TicLogsView().tag(0)
                                        NewTicLogView().tag(1)
                                    })
                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        }
                        /*.navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Impfungen")
                        //.ignoresSafeArea()
                    }*/
                }
    }
}

struct LogbookView_Previews: PreviewProvider {
    static var previews: some View {
        LogbookView()
    }
}
