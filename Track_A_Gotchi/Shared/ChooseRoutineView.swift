//
//  ChooseRoutineView.swift
//  Track_A_Gotchi
//
//  Created by Alessandra De Matteo on 15/11/21.
//

import SwiftUI

struct ChooseRoutineView: View {
    
    let imageName: String
    let routineTitle: String
    let description: String
    let page: Int
    
    var body: some View {
        VStack{
            Image(imageName)
                .scaleEffect(0.8)
                .offset(y: -50)
            Text(routineTitle)
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .offset(y: -50)
            ZStack {
                HStack {
                    if(page != 1){
                        Text("< Swipe")
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                            .padding()
                        Spacer()
                    }
                }
                    Text(description)
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
            NavigationLink(destination: MainScreenView()) { Text("Choose!")
                    .foregroundColor(.white)
                    .frame(width: 110, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }
            Spacer()
        }
    }
}


