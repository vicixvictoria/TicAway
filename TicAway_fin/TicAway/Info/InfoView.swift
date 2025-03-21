//
//  InfoView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 25.06.23.
//

import SwiftUI

struct InfoView: View {
    
    @State private var revealDetailsDate = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
   
    @State var selection: Int? = nil
    var body: some View {
    NavigationView {
        ScrollView {
            //.frame(height: 30)
            VStack{
                Text("Information").font(.largeTitle)
                    .offset(x:0, y:-50)
                
                //What is Tourettes Syndrom
                DisclosureGroup(
                    content: {
                        VStack{
                            Text("Tourette Syndrome is a neurological disease...").font(.callout)
                            NavigationLink(destination: InfoTSView()) {
                                Text("Read More").font(.caption)
                                                .padding()
                                                .foregroundColor(.white)
                                                .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.5))
                                                .cornerRadius(40)
                                                .offset(x:0, y:-5)
                                                .controlSize(.large)
                                       }
                            Spacer()
                            Spacer()
                            Text("Further Information:")
                            Text("Link 2")
                            Text("Link 3")
                        }
    
                        .foregroundColor(.black)
                }, label:{
                    Image(systemName: "questionmark")
                        .foregroundColor(.teal)
                    Text("What is Tourettes Syndrom")
                        .font(.title2)
                        .foregroundColor(.teal)
                    
                }
                ).padding()
                
                
            //What are Tics
                DisclosureGroup(
                                content: {
                    Text("Tics are involuntary or s involuntary, sudden, brief, intermittent, nonrhythmic, repetitive movements (motor) or sounds (phonic), and often stereotypical and not context-related.")
                        .foregroundColor(.black)
                                    NavigationLink(destination: InfoTSView()) {
                                        Text("Read More").font(.caption)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.5))
                                                        .cornerRadius(40)
                                                        .offset(x:0, y:-5)
                                                        .controlSize(.large)
                                               }
                }, label:{
                    Image(systemName: "questionmark")
                        .foregroundColor(.teal)
                    Text("What are Tics")
                        .font(.title2)
                        .foregroundColor(.teal)
                    
                }
                ).padding()
                
                // What are premonitory urges
                DisclosureGroup(
                                content: {
                    Text("A short time before a tic occurs the patient reports some sort of sensory symptom...")
                                    NavigationLink(destination: InfoTSView()) {
                                        Text("Read More").font(.caption)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.5))
                                                        .cornerRadius(40)
                                                        .offset(x:0, y:-5)
                                                        .controlSize(.large)
                                               }
                    Text("Link 2")
                        .foregroundColor(.black)
                }, label:{
                    Image(systemName: "questionmark")
                        .foregroundColor(.teal)
                    Text("What are premonitory urges")
                        .font(.title2)
                        .foregroundColor(.teal)
                    
                }
                ).padding()
                
                // What therapy forms are there
                DisclosureGroup(
                                content: {
                    Text("Non-pharmaceutical interventions may include various types o therapy, such as behavioral therapy...")
                                    NavigationLink(destination: InfoTSView()) {
                                        Text("Read More").font(.caption)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.5))
                                                        .cornerRadius(40)
                                                        .offset(x:0, y:-5)
                                                        .controlSize(.large)
                                               }
                    Text("Link 1")
                        .foregroundColor(.black)
                }, label:{
                    Image(systemName: "questionmark")
                        .foregroundColor(.teal)
                    Text("What therapy forms are there")
                        .font(.title2)
                        .foregroundColor(.teal)
                    
                }
                ).padding()
                
                //What behavioral therapy works best
                DisclosureGroup(
                                content: {
                    Text("At the moment the most recommended form of behavioral therapy for Tourette Syndrome is the Comprehensive Behavioral Intervention for Tics (CBIT)..")
                                    NavigationLink(destination: InfoTSView()) {
                                        Text("Read More").font(.caption)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.5))
                                                        .cornerRadius(40)
                                                        .offset(x:0, y:-5)
                                                        .controlSize(.large)
                                               }
                    Text("Link 2")
                    Text("Link 3")
                        .foregroundColor(.black)
                }, label:{
                    Image(systemName: "questionmark")
                        .foregroundColor(.teal)
                    Text("What behavioral therapy works best")
                        .font(.title2)
                        .foregroundColor(.teal)
                    
                }
                ).padding()
                
                //How does this app help
                DisclosureGroup(
                                content: {
                    Text("Digital interventions for Tourette Syndrom can help patients to get access to behavioral therapy,...")
                                    NavigationLink(destination: InfoTSView()) {
                                        Text("Read More").font(.caption)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.5))
                                                        .cornerRadius(40)
                                                        .offset(x:0, y:-5)
                                                        .controlSize(.large)
                                               }
    
                        .foregroundColor(.black)
                }, label:{
                    Image(systemName: "questionmark")
                        .foregroundColor(.teal)
                    Text("How does this app help")
                        .font(.title2)
                        .foregroundColor(.teal)
                    
                }
                ).padding()
                
                Spacer()
                
            }
        }
    }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
