//
//  ProfilAnsichtView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 05.05.23.
//

import SwiftUI

struct ProfilAnsichtView: View {
    
    @State private var patient = Profil_Data(id: "140", name1: "Vici", name2: "Zeillinger", bday: Date(), gender: "female")
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    func createDate() -> String {
           let formatter = DateFormatter()
           formatter.dateStyle = .long
           //formatter.setLocalizedDateFormatFromTemplate("dd-MM-yyyy-HH-mm")
          // formatter.timeStyle = .short

        let datetime = formatter.string(from: patient.bday ?? Date())
           return datetime
       }
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: -20){
            
                HStack(alignment: .top, spacing: 0){
                    
                List{
               //Section(header: Text("Profil")){
                HStack(spacing:1){
                    Image(systemName: "person")
                        .font(.headline)
                        .foregroundColor(.teal)
                    HStack{
                    Text(patient.name1)
                            .foregroundColor(.teal)
                    Text(patient.name2)
                            .foregroundColor(.teal)
                    }
                    .font(.system(size: 18.0, weight: .bold))
                        .foregroundColor(Color.teal)
                }
                HStack(spacing:1){
                    Image(systemName: "clock")
                    Text(createDate())
                }
                HStack(spacing:1){
                    Image(systemName: "face.smiling")
                    Text(patient.gender)
                    }
                    
                
                }
               // Spacer()
            //.environment(\.defaultMinListRowHeight, 2)
                .frame(minWidth: 0, maxWidth: 320, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                //.offset(x:0, y:10)
               
                    
                    List{
                        Image(systemName: "person.circle")
                            .resizable()
                            .foregroundColor(Color.teal)
                            .frame(width: 80.0, height:80.0,alignment: .top)
                            .background(Color.clear)
                            
                    }
                    //Spacer()
                    .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                    
                   
            
                }
                //.cornerRadius(10)
                Spacer()
                    .frame(height:1)
                .overlay(RoundedRectangle(cornerRadius:15).stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                  )
                    .padding([.top, .leading, .trailing])
                    .background(Color.white)
                
                
                
    
           /*List{
                Section(header: Text("Profil wechseln")){
                 
                
                    ForEach(profil_pass){ profil_pass in
                        
                        HStack(spacing:1){
                            Image(systemName: "person")
                            Button(profil_pass.name1){
                                self.presentationMode.wrappedValue.dismiss()
                            }
                            }
                    }
            
            }
            }*/

            }
            .background(Color(.sRGB, red: 228/255, green: 230/255, blue: 235/255, opacity: 0.8).opacity(0.8))
             .cornerRadius(11)
             .overlay(
                 RoundedRectangle(cornerRadius: 10.0)
                     .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                     .shadow(color: .black, radius: 10.0)
            )
            .padding(.top, -100)
            /*
            .cornerRadius(11)
            .overlay(
               RoundedRectangle(cornerRadius:15).stroke(Color(.sRGB, red: 200/255, green: 200/255, blue: 200/255, opacity: 0.6), lineWidth: 1)
              )
            .padding(.top, -100)
           // Spacer()*/
            
           
        }
    //}
}
}

struct ProfilAnsichtView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilAnsichtView()
    }
}
