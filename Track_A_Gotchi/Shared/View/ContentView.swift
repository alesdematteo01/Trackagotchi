//
//  ContentView.swift
//  Shared
//
//  Created by Alessandra De Matteo on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var timer: TimerClass
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Choose your routine")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .offset( y: -60)
                TabView{
                    ChooseRoutineView(routine: routine1)
                    
                    ChooseRoutineView(routine: routine2)
                    
                    ChooseRoutineView(routine: routine3)
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
        }
        .navigationBarBackButtonHidden(true)
        
        
        //        .onAppear {
        //            print("⚪️ On appear notification received")
        //            timer.setUpTimer()
        //        }
        
        .onReceive(timer.timer) { time in
            guard timer.isActive else { return }
            if timer.timeRemaining > 0 {
                timer.timeRemaining -= 1
            }
        }
        
        
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            print("🔵 willResignActiveNotification received")
            
            timer.saveRemainingTime()
        }
        
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willTerminateNotification)) { _ in
            print("🔴 willTerminateNotification received")
            timer.saveRemainingTime()
        }
        
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
            print("🟡 didBecomeActiveNotification received")
            timer.setUpTimer()
            print("the time remaining is \(timer.timeRemaining)")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerClass())
    }
}
