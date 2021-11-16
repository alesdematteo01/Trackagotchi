//
//  ChooseRoutineView.swift
//  Track_A_Gotchi
//
//  Created by Alessandra De Matteo on 15/11/21.
//

import SwiftUI



struct ChooseRoutineView: View {
    
    let routine: Routine
    @State var didYouChooseYourRoutine = false
    
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
                Text(routine.description)
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                .offset(y: -50)
                HStack {
                    if(routine.page != 1){
                        Text("""
                             \(Image(systemName: "chevron.left"))
                             """)
                            .font(.title)
                            .fontWeight(.bold)
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
                    if(routine.page != 3){
                        Text("""
                             \(Image(systemName: "chevron.right"))
                             """)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                            .padding()
                    }
                }
            }
            Spacer()
            Button("Choose!") {
                choosenRoutine = routine
                didYouChooseYourRoutine = true
            }
            .foregroundColor(.white)
            .frame(width: 110, height: 50, alignment: .center)
            .background(Color.blue)
            .cornerRadius(10)
            .offset(y:-25)
            
            NavigationLink(destination: MainScreenView(), isActive: $didYouChooseYourRoutine){
                EmptyView()
            }

            Spacer()
        }
    }
}
