//
//  TimerClass.swift
//  Track_A_Gotchi
//
//  Created by Анастасия Скорюкова on 18/11/21.
//

import SwiftUI

class TimerClass: ObservableObject {
    
    @State var savedDate: Date? = nil
    @State var currentDate: Date?  = nil
    @Published var timeRemaining: TimeInterval = 0
    @State var isActive = true
    
    let numberOfHours = 1.0
    @Published var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    
     func setUpTimer() {
        // 1. check if there is stored time remaining
        // 2. if yes
        // set the timer with the remaining time equals to the time stored remaining
        // 3. if no or it is equal to zero
        // start a new timer with the full amount of seconds
        
         if self.timeRemaining == 0.0 {
            print("Time remaining wasn't saved")
            self.timeRemaining = TimeInterval(numberOfHours * 3600)
        } else {
            self.timeRemaining = UserDefaults.standard.double(forKey: "timeRemaining")
            print("the saved value of time remaining is: \(self.timeRemaining)")
            restartTimer()
        }
    }
    
    
     func saveRemainingTime() {
        // timer keep going
        // 1. register the moment the person left the app
        let date = Date()
        UserDefaults.standard.set(date, forKey: "timeWhenUserLeftTheApp")
        print("SAVING: \(date)")
        // 2. register the current amount of time that passed
        UserDefaults.standard.set(timeRemaining, forKey: "timeRemaining")
        print("SAVING time remaining: \(timeRemaining)")
    }
    
    
     func restartTimer() {
        // 1. Get the time when the user left the application
         
         guard let date = UserDefaults.standard.object(forKey: "timeWhenUserLeftTheApp") as? Date else { self.timeRemaining =  TimeInterval(numberOfHours * 3600)
             return
         }
             
         
         
        let currentDate = Date()
        print("GETTING saved date: \(date)")
        
        // 2. Get the remaining time of the timer when the user left the applciation
        var storedRemainingTime = UserDefaults.standard.double(forKey: "timeRemaining")
        print("GETTING remaining time: \(storedRemainingTime)")
        
        // 3. Updating the Time Remaining
        let difference = currentDate.timeIntervalSince(date)
        print("CALCULATING the difference: \(difference)")
        storedRemainingTime -= difference
        print("NOW storedRemaining time is: \(storedRemainingTime)")
        
        if storedRemainingTime > 0 {
            UserDefaults.standard.set(storedRemainingTime, forKey: "timeRemaining")
            self.timeRemaining = UserDefaults.standard.double(forKey: "timeRemaining")
            print("Now time remaining is: \(self.timeRemaining)")
        } else {
            self.timeRemaining = 0
        }
         
    }
    
    
    func stopTimer() {
        self.isActive = false
        saveRemainingTime()
    }
    
    
    func makeTimeString(accumulatedTime: TimeInterval) -> String {
        let hours = Int(accumulatedTime) / 3600
        let minutes = Int(accumulatedTime) / 60 % 60
        let seconds = Int(accumulatedTime) % 60
        
        return String(format: "%02i:%02i:%02i", hours, minutes, seconds)
    }
    
}
