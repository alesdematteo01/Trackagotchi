//
//  InventoryView.swift
//  Track_A_Gotchi (iOS)
//
//  Created by Alessandra De Matteo on 18/11/21.
//

import SwiftUI

struct InventoryView: View {
    
    @State var rewards: [String] = ["🥯", "🍱","🍛", "🥖", "🥓", "🥑", "🥒", "🍟", "🫑", "🧅", "🥓", "🍕", "🥑","◻︎","◻︎"]
    @Binding var routine: Routine
    @State var columns: [GridItem] = [
            GridItem(.fixed(100), spacing: 16),
            GridItem(.fixed(100), spacing: 16),
            GridItem(.fixed(100), spacing: 16),
            GridItem(.fixed(100), spacing: 16),
            GridItem(.fixed(100), spacing: 16)
        ]
    
    var body: some View {
        VStack{
            HStack{
                Text("Health Bar")
                Spacer()
            }
            .padding()
            Image(routine.imageName)
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            ScrollView(.horizontal, showsIndicators: false){
                LazyVGrid(columns: columns, alignment: .leading, spacing: 32){
                        ForEach(rewards.indices, id: \.self) { index in
                            let item = rewards[index]
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("\(item)")
                                    .font(.system(size: 40))
                                    .frame(width: 80, height: 80)
                                    .background(Color.white)
                                    .shadow(radius: 3)
                            }
                        }
                    }
                }
            Spacer()
        }
        .navigationTitle("Inventory")
    }
}
