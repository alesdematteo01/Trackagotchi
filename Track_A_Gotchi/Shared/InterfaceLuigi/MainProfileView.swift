//
//  MainProfileView.swift
//  Track_A_Gotchi (iOS)
//
//  Created by Luigi Pedata on 17/11/21.
//

import SwiftUI

struct TaskListView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                List {
                    Section(
                        header:
                            Text("Your tasks of today")
                            .font(.subheadline),
                        footer:
                            Text("End. Enjoy your free time!")
                            .font(.subheadline)
                    ) {
                        HStack {
                            Text("I'm in the first 🥇 section")
                            
                        }
                        Text("Number 1️⃣")
                    }
                }
                .listStyle(GroupedListStyle ())
                
            }
        }
    }
}


struct MainProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
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
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
                ZStack(alignment: .topLeading) {
                    //Image should be replaced with 3D object
                    HStack(alignment: .center) {
                        Spacer()
                        Image("Dog.J01.2k")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Spacer()
                    }
                    .frame(width: .infinity, height:360, alignment: .center)
                    HStack(alignment: .top) {
                        //Healthbar should be replaced with healthbar struct
                        Text("HealthBar")
                        Spacer()
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
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    List {
                        Section(
                            header:
                                Text("Your tasks of today")
                                .font(.subheadline),
                            footer:
                                Text("End. Enjoy your free time!")
                                .font(.subheadline)
                        ) {
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
            
            
            Group {
                ZStack {
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
                //                .background(Color(red: 0.949, green: 0.949, blue: 0.969))
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
    }
}

struct MainProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainProfileView()
        }
    }
}
