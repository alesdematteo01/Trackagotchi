//
//  progressBarView.swift
//  Track_A_Gotchi (iOS)
//
//  Created by Francesco Pirone on 19/11/21.
//

import SwiftUI

struct progressBarView: View {
    
    var color1 = Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    @State var percent:CGFloat = 100
    
    var body: some View {
        VStack (spacing: 20){
            Text("\(Int(percent))%")
                .font(.system(size: 20, weight: .bold))
            
            //happiness bar
            progressBar(width: 100, height: 10, percent: percent,
                        color1: Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106,
                                                    blue: 0.1411764771, alpha: 1)),
                        color2: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964,
                                                    blue: 0.2666666806, alpha: 1)))
                .animation(.spring(), value: percent)
            
        }
    }
}

struct progressBarView_Previews: PreviewProvider {
    static var previews: some View {
        progressBarView()
    }
}
