//
//  ModalStopTracking.swift
//  Track_A_Gotchi (iOS)
//
//  Created by Luigi Pedata on 18/11/21.
//

import SwiftUI
import UIKit

struct ModalStopTracking: View {
    @Binding var showModal: Bool
    @EnvironmentObject var timer: TimerClass
    
    var body: some View {
        NavigationView {
            VStack {
//                Text("[Task Title]")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding()
                
                Image("Dog.J01.2k")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: .infinity, height: 180, alignment: .center)
                //            Button("Resume") {
                //                self.showModal.toggle()
                //            }
                HStack(spacing: 20) {
                    // Resume tracking option button
                    Button( action: {}) {
                        VStack {
                            Spacer()
                            Image(systemName: "play.fill")
                                .font(.system(size: 24))
                                .foregroundColor(Color(red: 1.0, green: 0.584, blue: 0.0))
                            Spacer()
                            HStack(alignment: .bottom) {
                                Text("Resume activity")
                                    .padding(.vertical, 10.0)
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(Color.white)
                            }
                            .frame(minWidth: .infinity)
                            .background(Color(red: 1.0, green: 0.584, blue: 0.0))
                        }
                        .frame(
                            width: 160,
                            height: 144)
                        .background(Color(red: 1.0, green: 0.949, blue: 0.89))
                        .cornerRadius(10)
                        
                    }
                    Text("OR")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    // Grab reward option button
                    Button( action: {}) {
                        Image(systemName: "stop.fill")
                            .font(.system(size: 80))
                            .foregroundColor(Color.black)
                    }
                }
            }
//            .background(Color(red: 0.949, green: 0.949, blue: 0.969))
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity
            )
            .navigationTitle("[Task Title]")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    ZStack {
//                        Text("Title")
//                            .font(.headline)
//                    }
//                }
//            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }
}

//struct ModalStopTracking_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalStopTracking().environmentObject(TimerClass())
//    }
//}
