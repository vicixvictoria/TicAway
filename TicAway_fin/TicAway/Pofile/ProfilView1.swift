//
//  ProfilView1.swift
//  TicAway
//
//  Created by Vici Zeillinger on 21.02.24.
//

import SwiftUI

struct ProfilView1: View {
    var body: some View {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Personal Profile")
                            .font(.headline)
                            .padding(.bottom, 10)
                        
                        // Tabelle von persönlichen Daten
                        ProfileDataRow(icon: "person.fill", title: "Name", value: "Max Mustermann")
                        ProfileDataRow(icon: "birthday.cake.fill", title: "Birthday", value: "01.01.2011")
                        ProfileDataRow(icon: "face.smiling", title: "Gender", value: "male")
                        ProfileDataRow(icon: "envelope.fill", title: "Email", value: "max.mustermann@example.com")
                        ProfileDataRow(icon: "phone.fill", title: "Telefon", value: "+1234567890")
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: "person.circle.fill") // Icon-Bild
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding(.trailing, 20)
                        .foregroundColor(.teal)
                }
                
                Spacer()
            }
            .padding()
            .navigationBarTitle("Profil")
        }
    }

    struct ProfileDataRow: View {
        var icon: String
        var title: String
        var value: String
        
        
        var body: some View {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.teal)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                    Text(value)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            .padding(.vertical, 5)
        }
    }

struct ProfilView1_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView1()
    }
}
