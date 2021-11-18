//
//  MainScreenView.swift
//  Track_A_Gotchi
//
//  Created by Alessandra De Matteo on 15/11/21.
//

import SwiftUI



struct MainScreenView: View {
    @Binding var routine : Routine
    var body: some View {
        Text(routine.routineTitle)
            .navigationBarBackButtonHidden(true)

    }
}

