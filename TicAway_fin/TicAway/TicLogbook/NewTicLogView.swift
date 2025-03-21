//
//  NewTicLogView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 21.06.23.
//

import SwiftUI

struct NewTicLogView: View {
    
    @State var name: String = ""
    @State var bday: String = ""
    @State var svnr: String = ""
    @State private var selection: String? = nil
    
    //Variables for Patient object
    @State var tic :String = ""
    @State var premonitoryUrge :String = ""
    @State var duration :String = ""
    @State var date = Date()
    
    @State private var selectedOption = 0
    private let options = ["No", "Yes"]

    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
    VStack {
        /*NavigationLink(destination: Neu_anlegenView(), tag: "Second", selection: $selection) { EmptyView() }*/
        
        Form{
            HStack{
                Image(systemName: "bubbles.and.sparkles")
                    .foregroundColor(.teal)
                TextField("Tic", text: $tic)
                    .frame(height: 50)
            }
            
            HStack{
                Image(systemName: "waveform.path")
                    .foregroundColor(.teal)
                TextField("Premonitory Urge", text: $premonitoryUrge)
                    .frame(height: 50)
            }
            
            
            HStack{
                Image(systemName: "clock.arrow.circlepath")
                    .foregroundColor(.teal)
                TextField("Duration in sec", text: $duration)
                    .frame(height: 50)
            }
            
            
            
            HStack{
                Image(systemName: "calendar")
                    .foregroundColor(.teal)
                //TextField("Geburtstag", $bday)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                    .frame(height: 50)
                    .foregroundColor(.teal)
            }
            
            HStack{
                Image(systemName: "calendar")
                    .foregroundColor(.teal)
                Text("Awareness Training")
                    .foregroundColor(.teal)
                //TextField("Geburtstag", $bday)
                Picker(selection: $selectedOption, label: Text("Select an option")) {
                    ForEach(0 ..< options.count) { index in
                        Text(options[index])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
            }
            
        }
        .listStyle(InsetGroupedListStyle()) // this has been renamed in iOS 14.*, as mentioned by @Elijah Yap
        .environment(\.horizontalSizeClass, .regular)
        .offset(x:0, y:10)
        
        
        
        
        Button(action: {
            saveData()
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack{
                Image(systemName: "checkmark")
                Text("create ")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.8).opacity(0.8))
            .cornerRadius(40)
            .offset(x:0, y:-15)
            
        }
        
        
    }
    .background(Color.gray.opacity(0.1))
    .cornerRadius(11)
    .overlay(
        RoundedRectangle(cornerRadius: 10.0)
            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
            .shadow(color: .black, radius: 10.0)
    )
    .navigationBarTitle("New Tic Log")
    
}
    
    
    func saveData(){
        let data: [String: Any] = [
            "tic": tic,
            "date": date,
            "premonitoryUrge": premonitoryUrge,
            "duration": duration
        ]
        UserDefaults.standard.set(data, forKey: "ticName")
        print("saved")
    }
    
}

struct NewTicLogView_Previews: PreviewProvider {
    static var previews: some View {
        NewTicLogView()
    }
}
