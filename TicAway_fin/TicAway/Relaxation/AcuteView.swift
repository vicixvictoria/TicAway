//
//  AcuteView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 19.02.24.
//

import SwiftUI

struct AcuteView: View {
    var body: some View {
        
        VStack{
            Text("Let me help").font(.largeTitle).padding()
            
            DisclosureGroup(
                content: {
                    VStack{
                        Text("This is a guided breathing technique for situations or tick attacks were you need acute help... \n Just play the video and follow the instructions").font(.callout)
                      
                        Spacer()
                        Spacer()
                        Text("Further Information:")
                        Text("Link 2")
                    }
                    
                    .foregroundColor(.black)
                }, label:{
                    Image(systemName: "questionmark")
                        .foregroundColor(.teal)
                    Text("How to do this exercise")
                        .font(.title2)
                        .foregroundColor(.teal)
                    
                }
            ).padding()
            
            Image("Square+Breathing+Coping+Skills+for+Kids")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Image (systemName: "play.circle")
                .foregroundColor(.teal)
                .offset(x: 0, y: -180)
        }
       
    }
    
    
}

struct Acute_Previews: PreviewProvider {
    static var previews: some View {
        AcuteView()
    }
}
