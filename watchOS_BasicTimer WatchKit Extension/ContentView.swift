//
//  ContentView.swift
//  watchOS_BasicTimer WatchKit Extension
//
//  Created by VOLKAN EFE on 20.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var secondScreenShow = false
    @State var timerVal = 1
    
    var body: some View {
        VStack{
            Text("Start Timer for \(timerVal) seconds")
                .font(.system(size: 10))
                .padding()
            Picker(selection: $timerVal, label: Text("")){
                Text("1").tag(1)
                Text("5").tag(5)
                Text("10").tag(10)
                Text("15").tag(15)
                
            }
            
            NavigationLink(destination: SecondView(secondScreenShow: $secondScreenShow, timerVal: timerVal), isActive: $secondScreenShow, label: {
                HStack {
                    Text("Go")
                 }
            })

        }
    }
}

struct SecondView: View {
    @Binding var secondScreenShow: Bool
    @State var timerVal: Int
    
    var body: some View {
        VStack{
            if timerVal > 0 {
                Text("Time remaining")
                    .font(.system(size: 14))
                Text("\(timerVal)")
                    .font(.system(size: 40))
                    .onAppear(){
                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){ _ in
                            if self.timerVal > 0 {
                                self.timerVal -= 1
                            }
                        }
                    }
                Text("seconds")
                    .font(.system(size: 14))
                Button(action: {
                    self.secondScreenShow = false
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.red)
                    
                })
                .cornerRadius(15)
                .shadow(color: Color.white, radius: 7, x: 10, y: 10)
            } else {
                Button(action: {
                    self.secondScreenShow = false
                }, label: {
                    Text("Done")
                        .foregroundColor(.green)
                })
                .cornerRadius(15)
                .shadow(color: Color.white, radius: 7, x: 10, y: 10)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
