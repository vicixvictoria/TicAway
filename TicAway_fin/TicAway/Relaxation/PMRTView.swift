//
//  PMRTView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 21.02.24.
//

import SwiftUI

struct PMRTView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text(" Relax your muscles ").font(.largeTitle).padding()
                
                DisclosureGroup(
                    content: {
                        VStack{
                            Text("Progressive muscle relaxation involves systematically tensing and relaxing different muscle groups in the body to promote a deep sense of relaxation and reduce muscle tension. The nervous system 'switches gears' from the stress to the relaxation response when individuals systematically tense and release muscle groups throughout the body. As this happens, breathing slows, heart rate and blood pressure drop, and stress hormones, like cortisol and adrenaline, decrease.").font(.callout)
                        }
                        
                        .foregroundColor(.black)
                    }, label:{
                        Image(systemName: "questionmark")
                            .foregroundColor(.teal)
                        Text("What is PMRT?")
                            .font(.title2)
                            .foregroundColor(.teal)
                        
                    }
                ).padding()
                
                DisclosureGroup(
                    content: {
                        VStack{
                            Text("Progressive relaxation can be practiced in any position—lying down, seated, or standing. Learning how to relax muscles in a sequence may sound challenging, but practicing muscle relaxation techniques is relatively simple. Take a moment to settle in before beginning by relaxing your shoulders, opening your hands, and spreading your fingers.\n\nConceptualize the progressive muscle relaxation steps as different body parts to concentrate on. Actively focus on the sensations in your body and breathing. When your attention wanders, gently return to tensing and relaxing. Progressive muscle relaxation techniques can help you tune into feelings of tension, stress, and anxiety throughout the day\n\nWhen practicing, tense your muscles for 15-20 seconds. Release quickly rather than gradually. Relax and breathe deeply for 20-30 seconds before tensing again, focusing on the sensation of stress leaving your body.").font(.callout)
                            
                            Spacer()
                            Spacer()
                            Text("Just click on the videos to get a guided exercise, more explination will follow!")
                        }
                        
                        .foregroundColor(.black)
                    }, label:{
                        Image(systemName: "questionmark")
                            .foregroundColor(.teal)
                        Text("How do I exercise by myself?")
                            .font(.title2)
                            .foregroundColor(.teal)
                        
                    }
                ).padding()
                
                Image("117013958_3300995823290732_3042728809316017058_n")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                
                Image (systemName: "play.circle")
                    .foregroundColor(.teal)
                    .offset(x: 0, y: -180)
            }
            
        }
    }
}

struct PMRTView_Previews: PreviewProvider {
    static var previews: some View {
        PMRTView()
    }
}
