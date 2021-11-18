//
//  ModalSetting2.swift
//  Track_A_Gotchi
//
//  Created by Alessandra De Matteo on 17/11/21.
//

import SwiftUI

struct ModalSetting2: View {
    @Binding var showModal: Bool
    var body: some View {
        VStack {
            Text("Opzione 2")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
            Button("Dismiss") {
                self.showModal.toggle()
            }
        }
    }
}


