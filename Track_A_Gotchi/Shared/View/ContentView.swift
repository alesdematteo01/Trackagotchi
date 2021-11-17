//
//  ContentView.swift
//  Shared
//
//  Created by Alessandra De Matteo on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                TabView{
                    ChooseRoutineView(routine: routine1)
                    
                    ChooseRoutineView(routine: routine2)
                }
                .navigationTitle("Choose a pet!")
                .navigationBarTitle(Text("x"))
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))

            }
        }
        .navigationBarBackButtonHidden(true)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
