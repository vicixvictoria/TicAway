//
//  InfoTSView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 26.06.23.
//

import SwiftUI

struct InfoTSView: View {
    var body: some View {
        ScrollView{
            VStack(){
                Text("What is Tourette Syndrom?")
                    .font(.headline)
                    .padding()
                    .offset(x:0, y:-20)
                    .foregroundColor(.teal)
                Text("Tourette Syndrome (TS) is a heterogeneous neurological disorder that affects individuals of all ages worldwide. Symptoms usually begin in childhood and may vary in severity over time. The cause of Tourette syndrome is not yet fully understood, but it is believed to involve a combination of genetic and environmental factors. While there is no cure for Tourette syndrome, treatments such as medications and behavioral therapies can help manage symptoms and improve quality of life. Tourette Syndrome affects between 0,3%-1% of the world's population. The prevalence of this disease is higher in boys in the diagnosis, however, it is more persistent in girls.\n\n")
                    .font(.callout)
                
                Text("What are Tics?")
                    .font(.headline)
                    .padding()
                    .offset(x:0, y:-20)
                    .foregroundColor(.teal)
                
                Text("The primary clinical symptoms of TS are called tics. They are involuntary or semiinvoluntary, sudden, brief, intermittent, nonrhythmic, repetitive movements (motor) or sounds (phonic), and often stereotypical and not context-related. The tics can be simple like single muscle movements or movements in specific muscle groups, but they can also be complex and therefore more coordinated movements of a motor sequence")
                
                Text("Sources")
                    .font(.headline)
                    .padding()
                    .offset(x:0, y:-20)
                    .foregroundColor(.teal)
                
                Text("[1] Chou CY, Agin-Liebes J, Kuo SH. Emerging therapies and recent advances for Tourette syndrome. Heliyon. 2023 Jan 7;9(1):e12874. doi: 10.1016/j.heliyon.2023.e12874. PMID: 36691528; PMCID: PMC9860289.\n\n[2] Hienert, M, Tourette syndrome Pathology, comorbidities and therapy in adults,. 2020 Jun; urn:nbn:at:at-ubmuw:1-32741")
                    .italic()
            }
        }
    }
}

struct InfoTSView_Previews: PreviewProvider {
    static var previews: some View {
        InfoTSView()
    }
}
