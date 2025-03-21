//
//  TicLogDetailView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 23.06.23.
//

import SwiftUI

struct TicLogDetailView: View {
    let ticLog: TicLog
    @State private var revealDetailsDate = true
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var revealDetailsPremUrge = true
    func createDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        //formatter.setLocalizedDateFormatFromTemplate("dd-MM-yyyy-HH-mm")
        formatter.timeStyle = .short

        let datetime = formatter.string(from: ticLog.date)
        return datetime
    }
    
    @State var selection: Int? = nil
    var body: some View {
        NavigationView {
            ScrollView {
        VStack{
            
            Text(ticLog.tic).font(.largeTitle).padding()
            
            DisclosureGroup(isExpanded: $revealDetailsDate,
                content: {
                    VStack {
                        Text(createDate())
                    }
                },
                label: {
                    Image(systemName: "calendar")
                    .foregroundColor(.teal)
                    Text("Occurence Date")
                        .font(.title2)
                        .foregroundColor(.teal)
                        
                }
            ).padding()
            
            
            DisclosureGroup(isExpanded: $revealDetailsPremUrge,
                content: {
                    Text(ticLog.premonitoryUrge)
                        .font(.body)
                        .fontWeight(.light)
                },
                label: {
                    Image(systemName: "waveform.path")
                    .foregroundColor(.teal)
                    Text("Premonitory Urges")
                        .font(.title2)
                        .foregroundColor(.teal)
                        
                }
            ).padding()
            
            DisclosureGroup(
                content: {
                    Text(ticLog.duration)
                        .font(.body)
                        .fontWeight(.light)
                    
                },
                label: {
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(.teal)
                    Text("Duration")
                        .font(.title2)
                        .foregroundColor(.teal)
                        
                }
            ).padding()
            
            DisclosureGroup(
                content: {
                    Text(ticLog.awarenesstraining.description)
                        .font(.body)
                        .fontWeight(.light)
                    
                },
                label: {
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(.teal)
                    Text("Awareness Training")
                        .font(.title2)
                        .foregroundColor(.teal)
                        
                }
            ).padding()
            
            
            
            Spacer()
                
            
            Button(action: {
                delete()
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    //Spacer()
                    Image(systemName: "trash")
                    Text("Löschen").foregroundColor(Color.white).bold()
                    //Spacer()
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color(.sRGB, red: 191/255, green: 0/255, blue: 0/255, opacity: 1))
            .cornerRadius(40)
            .offset(x:0, y:-15)
       
            
            
        }
        .navigationBarTitleDisplayMode(.inline)
        //.navigationBarBackButtonHidden(true)
       // .navigationBarHidden(true)
        }
        }
    }
        
    
    func delete(){
    }
    
    /*func delete() {
        let endpoint = ImmunizationEndpoint()
        endpoint.deleteImmunization(id: impfung.id)
    }*/
}


struct TicLogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicLogDetailView(ticLog: TicLog.example)
    }
}
