//
//  ModalStopTracking.swift
//  Track_A_Gotchi (iOS)
//
//  Created by Luigi Pedata on 18/11/21.
//

import SwiftUI

struct ModalStopTracking: View {
    @Binding var showModal: Bool
    @EnvironmentObject var timer: TimerClass
    var body: some View {
        VStack {
            Text("Opzione 1")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
            Button("Resume") {
                self.showModal.toggle()
                self.timer.isActive = true
            }
        }
    }
}
