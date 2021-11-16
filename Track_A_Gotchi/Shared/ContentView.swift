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
                    ChooseRoutineView(imageName: "pet1", routineTitle: "Routine1", description: "Routine bella", page: 1)
                    
                    ChooseRoutineView(imageName: "pet1", routineTitle: "Routine2", description: "Routine carina", page: 2)
                }
                .navigationTitle("Choose a pet!")
                .navigationBarTitle(Text("x"))
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
