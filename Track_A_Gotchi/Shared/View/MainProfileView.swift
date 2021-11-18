//
//  MainProfileView.swift
//  Track_A_Gotchi (iOS)
//
//  Created by Luigi Pedata on 17/11/21.
//

import SwiftUI

struct MainProfileView: View {
    @Binding var routine: Routine
    var body: some View {
        // 1. Top section: header bar + character slot
        VStack(alignment: .leading, spacing: 0) {
            // 1.1 Title Bar
            VStack(alignment: .leading, spacing: 0) {
                ZStack {
                    Rectangle()
                        .frame(width: .infinity, height: 100)
                        .foregroundColor(Color.white)
                        .shadow(color: .gray, radius: 1, x: 0, y: 2)
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Profile")
                            }
                            Spacer()
//                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
//                                Image(systemName: "gear")
//                            }
                            NavigationLink(destination: SettingView(routine: $routine)) {
                                Image(systemName: "gear")
                            }
                        }
                        Text ("Hi [name]")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .padding()
                }
                .offset(y:-2)
                // 1.2 Character
                ZStack(alignment: .topLeading) {
                    // 1.3 Character image (should be replaced with 3D object)
                    HStack(alignment: .center) {
                        Spacer()
                        Image(routine.imageName)
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Spacer()
                    }
                    .frame(width: .infinity, height:360, alignment: .center)
                    // 1.4 High section w/ healthbar + Inventory button
                    HStack(alignment: .top) {
                        // 1.5 Healthbar (should be replaced with healthbar struct)
                        Text("HealthBar")
                        Spacer()
                        // 1.6 Inventory button
                        Button( action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image("Inventory")
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: 60, height: 60, alignment: .center)
                        .padding(4)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                        .cornerRadius(4)
                        .shadow(color: .gray, radius: 2, x: 0, y: 1)
                        
                        
                    }
                    .padding()
                }
            }
            .background(Color(red: 0.949, green: 0.949, blue: 0.969))
            
            // 2. Task list
            ScrollView(.vertical, showsIndicators: false) {
                // N.b. Stack w/ declared height is required to show content
                VStack {
                    // 2.1 Task list content
                    List {
                        // N.b. Section is required to style contents
                        Section(
                            // Top text
                            header:
                                Text("Your tasks of today")
                                .font(.subheadline),
                            // Bottom text
                            footer:
                                Text("End. Enjoy your free time!")
                                .font(.subheadline)
                        ) // 2.2 Activities
                        {
                            Text("I'm a task 🥇")
                            Text("I'm a task 🥇")
                            Text("I'm a task 🥇")
                            Text("I'm a task 🥇")
                            Text("I'm a task 🥇")
                        }
                    }
                    .listStyle(GroupedListStyle ())
                }
                .frame(height: 227)
            }
            .frame(maxWidth: .infinity)
            
            // 3. Footer w/ tracking bar/button
            Group {
                // 3.1 Tracking bar
                ZStack {
                    // 3.2 Callouts
                    HStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("It's [task] time")
                                .font(.subheadline)
                                .foregroundColor(Color.blue)
                            Text("Let's track")
                                .font(.title2)
                                .fontWeight(.bold)
                        }
                        Spacer()
                        // 3.3 Start tracking button
                        Button( action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "play.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 60, height: 60, alignment: .center)
                        .background(RoundedRectangle(cornerRadius: 40).fill(.blue))
                        .cornerRadius(4)
                        .shadow(color: .gray, radius: 2, x: 0, y: 1)
                    }
                    .frame (
                        minWidth: 0,
                        maxWidth: .infinity )
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                    .cornerRadius(4)
                    .shadow(color: .gray, radius: 2, x: 0, y: 1)
                }
                .padding()
                .frame (width: .infinity)
            }
            .background(Color(red: 0.949, green: 0.949, blue: 0.969))
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .background(Color.white)
        .navigationBarBackButtonHidden(true)
    }
}

