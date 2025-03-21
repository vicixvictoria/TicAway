//
//  MainView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 16.06.23.
//

import SwiftUI
import LocalAuthentication

struct MainView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemTeal.withAlphaComponent(0.3)
       /* UINavigationBar.appearance().barTintColor = UIColor(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false*/
    }
    
    var body: some View {
        TabView{
            NavigationView{
                TicLogsView()
                    .navigationBarTitle("Tic-Away")
                    .navigationBarTitleDisplayMode(.inline)
                   
            }
            .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
            .accentColor(Color(.sRGB, red: 27/255, green: 37/255, blue: 80/255, opacity: 1))
           // .padding()
            .tabItem {
                Image(systemName: "book")
                                    Text("Logbook")
            }
            .tag(1)
            
            NavigationView{
                AwarenessView()
                    .navigationBarTitle(Text("Awareness Training"), displayMode: .inline)
            }
            .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
            .accentColor(Color(.sRGB, red: 27/255, green: 37/255, blue: 80/255, opacity: 1))
           // .padding()
            .tabItem {
                Image(systemName: "brain.head.profile")
                                    Text("Awareness Training")
            }
            .tag(2)
            
            NavigationView{
                RelaxationView()
                    .navigationBarTitle(Text("Relaxation"), displayMode: .inline)
            }
            .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
            .accentColor(Color(.sRGB, red: 27/255, green: 37/255, blue: 80/255, opacity: 1))
            //.padding()
            .tabItem {
                Image(systemName: "timelapse")
                                    Text("Relaxation")
            }
            .tag(3)
            
            NavigationView{
                InfoView()
                    .navigationBarTitle(Text("Info"), displayMode: .inline)
            }
            .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
            .accentColor(Color(.sRGB, red: 27/255, green: 37/255, blue: 80/255, opacity: 1))
            //.padding()
            .tabItem {
                Image(systemName: "info.bubble")
                                    Text("Info")
            }
            .tag(4)
            
            NavigationView{
                ProfilView1()
                    .navigationBarTitle(Text("Profil"), displayMode: .inline)
            }
            .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
            .accentColor(Color(.sRGB, red: 27/255, green: 37/255, blue: 80/255, opacity: 1))
            //.padding()
            .tabItem {
                Image(systemName: "person.circle")
                                    Text("Profil")
            }
            .tag(5)
                      
        }
        //.environmentObject(profile)
       
    }
    
    
}


struct Previews_MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
