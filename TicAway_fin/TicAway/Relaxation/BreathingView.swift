//
//  BreathingView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 19.02.24.
//

import SwiftUI

struct BreathingView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Breath In").font(.largeTitle).padding()
                
                DisclosureGroup(
                    content: {
                        VStack{
                            Text("The right way to breath can help you to calm down and get your tics a little more under control if you need it...\nHere you can learn and practice a few useful techniques for different situations.").font(.callout)
                            
                        }
                        
                        .foregroundColor(.black)
                    }, label:{
                        Image(systemName: "questionmark")
                            .foregroundColor(.teal)
                        Text("Why is breathing  important?")
                            .font(.title2)
                            .foregroundColor(.teal)
                        
                    }
                ).padding()
                
                Image("6_Steps_For_Diaphragmatic_Breathing_Exercise_Infographic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                
                Image("Bildschirm­foto 2024-02-19 um 23.01.43")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                
            }
            
        }
    }
    
    
}

struct BreathingView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingView()
    }
}
