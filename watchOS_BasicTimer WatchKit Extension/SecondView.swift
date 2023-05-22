//
//  SecondView.swift
//  watchOS_BasicTimer WatchKit Extension
//
//  Created by VOLKAN EFE on 21.05.2023.
//

import SwiftUI

struct SecondView: View {
    
    @State var timerVal = 1
    
    var body: some View {
        VStack{
            if timerVal > 0 {
                Text("Time remaning")
                    .font(.system(size: 14))
                Text("\(timerVal)")
                    .font(.system(size: 40))
                Text("seconds")
                    .font(.system(size: 14))
                Button(action: {
                    SecondView.hidden()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.red)
                })
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
