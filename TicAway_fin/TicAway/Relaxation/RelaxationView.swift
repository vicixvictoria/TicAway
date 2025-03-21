//
//  RelaxationView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 16.06.23.
//

import SwiftUI

struct RelaxationView: View {
   /* var title: String
    var subtitle: String
    var imageName: String
    var cardWidth: CGFloat
    var cardHeight: CGFloat
    var action: () -> Void
    @State private var isButtonClicked = false*/
    
    /*var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: imageName)
                    .font(.largeTitle)
                    .foregroundColor(.teal)
                    .padding()
                
                Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.teal)
                    .padding(.bottom, 4)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom)
                
                Spacer()
            }
            .padding()
            .frame(width: cardWidth, height: cardHeight)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 4)
        }
    }
}

struct RelaxationView: View {
   // NavigationView{
        var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: Acute()){
                        Card(title: "Acute ", subtitle: "Breathing  Technique", imageName: "cross.case", cardWidth: 250, cardHeight: 200){
                    }
                }
                Card(title: "Breathing", subtitle: "Deep Breathing", imageName: "lungs", cardWidth: 250, cardHeight: 200){
                    print("card clicked")
                }
                Card(title: "PMRT", subtitle: "Progresive Muscle Relaxation ", imageName: "figure.strengthtraining.functional", cardWidth: 250, cardHeight: 200){
                    print("card clicked")
                }
            }
            .padding()
        }
    }*/
    
    
    var body: some View {
           NavigationView {
               VStack {
            
                   NavigationLink(destination: AcuteView()) {
                       ZStack{
                           Rectangle()
                               .fill(Color.white)
                               .frame(width: 250, height: 140)
                               .cornerRadius(10)
                               .overlay(
                                                              Rectangle()
                                                                  .stroke(Color.teal, lineWidth: 2)
                                        .cornerRadius(4)
                                                          )
                               //.padding()
                           VStack{
                               Image(systemName: "cross.case")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.teal)
                               Text("Acute")
                                   .foregroundColor(.teal)
                                   .font(.headline)
                           }
                       }
                      // .padding()
                   }
                   
                   NavigationLink(destination: BreathingView()) {
                       ZStack{
                           Rectangle()
                               .fill(Color.white)
                               .frame(width: 250, height: 140)
                               .cornerRadius(10)
                               .overlay(
                                                              Rectangle()
                                                                  .stroke(Color.teal, lineWidth: 2)
                                        .cornerRadius(4)
                                                          )
                               //.padding()
                           VStack{
                               Image(systemName: "lungs")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.teal)
                               Text("Breathing")
                                   .foregroundColor(.teal)
                                   .font(.headline)
                           }
                       }
                      // .padding()
                   }
                   
                   NavigationLink(destination: PMRTView()) {
                       ZStack{
                           Rectangle()
                               .fill(Color.white)
                               .frame(width: 250, height: 140)
                               .cornerRadius(10)
                               .overlay(
                                                              Rectangle()
                                                                  .stroke(Color.teal, lineWidth: 2)
                                        .cornerRadius(4)
                                                          )
                               //.padding()
                           VStack{
                               Image(systemName: "figure.strengthtraining.functional")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.teal)
                               Text("PMRT - Progresive  \n Muscle Relaxation")
                                   .foregroundColor(.teal)
                                   .font(.headline)
                           }
                       }
                      // .padding()
                   }
                   
                   
               }
               .navigationTitle("Relaxation")
               .foregroundColor(.teal)
           }
       }
   }

  /* struct RelaxationView: View {
       var body: some View {
           Text("Detail Page")
               .font(.title)
       }
   }*/

struct RelaxationView_Previews: PreviewProvider {
    static var previews: some View {
        RelaxationView()
    }
}
