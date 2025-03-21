//
//  AwarenessView.swift
//  TicAway
//
//  Created by Vici Zeillinger on 16.06.23.
//

import SwiftUI

struct AwarenessView: View {
    @State private var timeRemaining = 60
    let totalTime: TimeInterval = 60
    @State private var timer: Timer?
    @State private var progress: Double = 1.0
    
    let items = ["You can focus on the changing numbers of the timer, to be more relaxed.", "If you finished a session, don't forget to update your tic logbook and record the tics. You can mark them as awareness training tics, which helps you to identify the premonitory urges better", "Third item"]
    
    
    var body: some View {
        
        VStack {
            
            Spacer()
                .frame(height: 60)
            Text("Start your Awareness Training now")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(.black)
                /*.padding(.vertical, 15)
                .padding(.horizontal, 20)
                .background(Color.teal)
                .opacity(0.9)
                .foregroundColor(.white)
                .cornerRadius(10)*/
            
            
            DisclosureGroup(
                content: {
                    VStack{
                        Text("Awareness training supports you by helping to understand how and by which influences your tics are triggered. To start an awareness session, just click on start end the clock will count down from three minutes. ").font(.callout)
                            .padding()
                    
                        /*Text("You can focus on the changing numbers of the timer, to be more relaxed.").font(.callout)
                            .padding()*/
                        Text("If you finished a session, don't forget to update your tic logbook and record the tics. You can mark them as awareness training tics, which helps you to identify the premonitory urges better").font(.callout)
                            .padding()
                    }

                    .foregroundColor(.black)
            }, label:{
                Image(systemName: "questionmark.circle")
                    .foregroundColor(.teal)
                Text("Tipps and Tricks")
                    .font(.title2)
                    .foregroundColor(.teal)
                
            }
            ).padding()
            
            Spacer()
            .frame(height: 60)
            ZStack{
                VStack{
                    
                    Text("\(timeRemaining) sec")
                        .font(.largeTitle)
                        .padding()
                    
                    
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle())
                        .padding()
                        .accentColor(.teal)
                    
                    Button(action: {
                        startTimer()
                    }) {
                        Text("Start")
                    }
                    
                    Button(action: {
                        stopTimer()
                    }) {
                        Text("Stop")
                    }
                    
                    Button(action: {
                        resetTimer()
                    }) {
                        Text("Reset")
                    }
                }
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 30)
            .foregroundColor(.black.opacity(1))
            .background(Color.teal .opacity(0.3))
            .cornerRadius(10)
            Spacer()
            
            
            NavigationLink(destination: NewTicLogView()) {
                               Text("+ New Log")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(.sRGB, red: 101/255, green: 182/255, blue: 205/255, opacity: 1))
                                .cornerRadius(40)
                                .offset(x:0, y:-15)
                       }
                    }
            
                    .onAppear(perform: {
                        resetTimer()
                    })
        
                }

                func startTimer() {
                    if timer == nil {
                        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                            if timeRemaining > 0 {
                                timeRemaining -= 1
                                progress -= 1 / totalTime // Update progress here
                                                   if progress <= 0 {
                                                       stopTimer()
                                                   }
                            } else {
                                stopTimer()
                            }
                        }
                    }
                   /* progress = 1.0
                           Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                               progress -= 1 / totalTime
                               if progress <= 0 {
                                   timer.invalidate()
                               }
                           }*/
                }

                func stopTimer() {
                    timer?.invalidate()
                    timer = nil
                }

                func resetTimer() {
                    stopTimer()
                    timeRemaining = 60
                    progress = 1.0
                }
    
}

struct AwarenessView_Previews: PreviewProvider {
    static var previews: some View {
        AwarenessView()
    }
}
