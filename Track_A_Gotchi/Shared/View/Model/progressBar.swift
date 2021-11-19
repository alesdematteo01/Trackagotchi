//
//  progressBar.swift
//  trackagotchi
//
//  Created by Francesco Pirone on 15/11/21.
//

import SwiftUI

struct progressBar: View {
    
    var width: CGFloat = 100
    var height: CGFloat = 10
    var percent: CGFloat = 100
    
    var color1 = Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    
    
    var body: some View {
            let multiplier = width / 100
            ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius:height, style: .continuous)
            .frame(width: width, height: height)
            .foregroundColor(Color.gray.opacity(0.1))
            
            RoundedRectangle(cornerRadius: height, style: .continuous)
            .frame(width: percent * multiplier, height: height)
            .background(LinearGradient(gradient: Gradient(colors: [color1, color2]),
            startPoint: .leading, endPoint: .trailing)
            .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous)))
            .foregroundColor(.clear)
             
            Text(emojiString())
            .offset(x: -15, y: 0)
            .font(.system(size: 25))

            }
  }
    func emojiString() -> String
    {
        if percent == 100 {
            return "😊"
        } else if percent >= 80 {
            return "☺️"
        } else if percent >= 60 {
            return "😐"
        } else if percent >= 40 {
            return "😕"
        } else if percent >= 20 {
            return "☹️"
        } else {
            return "😭"
        }
    
    }
}


    struct happy_Previews: PreviewProvider {
    static var previews: some View {
    progressBar()
         }
    }


    

