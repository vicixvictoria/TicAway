//
//  TicLogsView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 21.06.23.
//

import SwiftUI
//import Foundation

struct TicLogsView: View {
    
    @State var tic :String = ""
    @State var premonitoryUrge :String = ""
    @State var duration :String = ""
    @State var date = Date()
    @State var patientId :String = ""
    //@State var awarenesstraining: Bool
    
    @State private var ticLog = [
        TicLog(patientId: "cde", tic: "head shaking", date: Date(), premonitoryUrge: "feeling in neck muscles", duration: "5 sec", awarenesstraining: true),
        TicLog(patientId: "cde", tic: "blinking", date: Date(), premonitoryUrge: "feeling in  eyes", duration: "ongoing", awarenesstraining: false),
        TicLog(patientId: "cde", tic: "inhaling sharply throuhg nose", date: Date(), premonitoryUrge: "urge to breath in", duration: "10 sec", awarenesstraining: false),
        TicLog(patientId: "cde", tic: "cursing f*ck", date: Date(), premonitoryUrge: "feeling in throat", duration: "2 sec", awarenesstraining: true)
        
    ]
    
    let tic1 = TicLog(patientId: "cde", tic: "head shaking", date: Date(), premonitoryUrge: "feeling in neck muscles", duration: "5 sec", awarenesstraining: true)
   // modelContext.insert(tic1)
   
    
    func loadData() {
        // Retrieve data from UserDefaults
        if let data = UserDefaults.standard.dictionary(forKey: "ticName") {
            // Extract values from the dictionary
            if let savedTic = data["tic"] as? String {
                tic = savedTic
            }
            if let savedDate = data["date"] as? Date {
                date = savedDate
            }
            if let savedUrge = data["premonitoryUrge"] as? String {
                premonitoryUrge = savedUrge
            }
            
            if let savedDuration = data["duration"] as? String {
                duration = savedDuration
            }
            
          let tic1 = TicLog(patientId: "cde", tic: tic, date: date, premonitoryUrge: premonitoryUrge, duration: duration, awarenesstraining: false)
            
            
            ticLog.append(tic1)
        }
    }
    
    func checkIfDataExists() {
        // Retrieve data from UserDefaults
        if UserDefaults.standard.object(forKey: "ticName") != nil {
            print("Data exists")
        } else {
            print("Data does not exist")
        }
    }

    var body: some View {
        VStack{
            NavigationView {
                List(ticLog) { ticLog in
                    TableRowView(ticLog: ticLog)
                }
                .listStyle(.plain)
                .navigationTitle("Your Logbook:")
                .background(.white)
               
            }
            
           /* NavigationView {
                Button(action: {
                    print("New log")
                }) {
                    HStack {
                        //Spacer()
                        Image(systemName: "plus")
                        Text("New Log").foregroundColor(Color.white).bold()
                        //Spacer()
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(Color(.sRGB, red: 1/255, green: 122/255, blue: 143/255, opacity: 0.8))
                .cornerRadius(40)
                .offset(x:0, y:-15)
            }*/
            
            NavigationLink(destination: NewTicLogView()) {
                               Text("+ New Log")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(.sRGB, red: 101/255, green: 182/255, blue: 201/255, opacity: 1))
                                .cornerRadius(40)
                                .offset(x:0, y:-15)
                       }
        }
        .onAppear {
                    // Load data when the view appears
                    loadData()
                    checkIfDataExists()
                }
    }
    
        
        struct TableRowView: View {
            let ticLog: TicLog
            
            var body: some View {
                NavigationLink(destination: TicLogDetailView(ticLog: ticLog)){
                    Button(action: {
                        // Handle row tap action here
                        
                        print("Row tapped: \(ticLog.tic)")
                    }) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(ticLog.tic)
                                    .font(.headline)
                                    .foregroundColor(.teal)
                                Text(ticLog.date, style: .date)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                    }
                }
            
            }
        }

}
    
    struct Previews_TicLogsView_Previews: PreviewProvider {
        static var previews: some View {
            TicLogsView()
        }
    }
