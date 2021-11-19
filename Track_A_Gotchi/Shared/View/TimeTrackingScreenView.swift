//
//  TimeTrackingScreenView.swift
//  Track_A_Gotchi (iOS)
//
//  Created by Luigi Pedata on 18/11/21.
//

import SwiftUI

struct TimeTrackingScreenView: View {
    
    @State private var showModal = false
    @EnvironmentObject var timer: TimerClass
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
//            ZStack {
//                Rectangle()
//                    .frame(width: .infinity, height: 100)
//                    .foregroundColor(Color.white)
//                    .shadow(color: .gray, radius: 1, x: 0, y: 2)
//                Text ("[Task title]")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//            }
//            .offset(y:-2)
            
            VStack(alignment: .center, spacing: 20) {
                // 1.3 Character image (should be replaced with 3D object)
                Spacer()
                HStack(alignment: .center) {
                    Spacer()
                    Image("Dog.J01.2k")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    Spacer()
                }
                .frame(width: .infinity, height:150, alignment: .center)
                Spacer()
                // TIMER PLACEHOLDER
                Text(timer.makeTimeString(accumulatedTime: timer.timeRemaining))
                Spacer()
                // 3.3 Stop tracking button
                
//                Button( action: {self.showModal.toggle()}) {
//                    Image(systemName: "stop.fill")
//                        .font(.system(size: 80))
//                        .foregroundColor(Color.white)
//                }
                
                Button {
                    self.showModal.toggle()
                    timer.stopTimer()
                } label: {
                    Image(systemName: "stop.fill")
                        .font(.system(size: 80))
                        .foregroundColor(Color.white)
                }
                
                .sheet(isPresented: $showModal){
                    ModalStopTracking(showModal: self.$showModal)
                }
                .frame(width: 160, height: 160, alignment: .center)
                .background(Circle().fill(.blue))
                // 3.3 Pause tracking button
                Button( action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image(systemName: "pause.fill")
                        .font(.title)
                        .foregroundColor(Color.white)
                }
                .frame(width: 60, height: 60, alignment: .center)
                .background(Circle().fill(.blue))
                Spacer()
                

            }
            .onAppear {
                
                    print("⚪️ On appear notification received")
                    timer.setUpTimer()
            }
            
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .background(Color.white)
        .navigationTitle("[Task Title]")
    }
}

struct TimeTrackingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTrackingScreenView().environmentObject(TimerClass())
    }
}
