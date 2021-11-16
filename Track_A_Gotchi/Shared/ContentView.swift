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
                Text("Choose your routine")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .offset( y: -40)
                TabView{
                    ChooseRoutineView(routine: routine1)
                    
                    ChooseRoutineView(routine: routine2)
                    
                    ChooseRoutineView(routine: routine3)
                }
//                .navigationTitle("Choose a pet!")
//                .navigationBarTitle(Text("x"))
                .navigationBarBackButtonHidden(true)
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))

            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
