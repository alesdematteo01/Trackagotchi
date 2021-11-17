//
//  ChooseRoutineView.swift
//  Track_A_Gotchi
//
//  Created by Alessandra De Matteo on 15/11/21.
//

import SwiftUI



struct ChooseRoutineView: View {
    
    @State var routine: Routine
    
    var body: some View {
        VStack{
            Image(routine.imageName)
                .scaleEffect(0.8)
                .offset(y: -50)
            Text(routine.routineTitle)
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .offset(y: -50)
            ZStack {
                HStack {
                    if(routine.page != 1){
                        Text("< Swipe")
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                            .padding()
                        Spacer()
                    }
                }
                Text(routine.description)
                        .font(.body)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    .offset(y: -50)
                HStack {
                    Spacer()
                    Text("Swipe >")
                        .fontWeight(.light)
                        .foregroundColor(Color.blue)
                        .padding()
                    
                }
            }
            
            Spacer()
            
            NavigationLink(destination: MainScreenView(routine: $routine)){
                Text("Choose!")
                    .foregroundColor(.white)
                    .frame(width: 110, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(10)
            }

            Spacer()
        }
    }
}


