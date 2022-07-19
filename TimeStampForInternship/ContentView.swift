//
//  ContentView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/18/22.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonWasPressed = false
    @State private var timeOfButtonPress = Text("")
    let howManyButtons = 10
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                ForEach(0...howManyButtons, id: \.self) { number in
                    let numberOfButtons = number % 2
                    if numberOfButtons != 0 {
                        Button(action: buttonPressed) {
                            ZStack {
                                Text("\(number)")
                                    .foregroundColor(.black)
                                    .zIndex(1)
                                Image(systemName: "square.fill")
                            }
                        }
                        .scaleEffect(3)
                        .alert(timeOfButtonPress, isPresented: $buttonWasPressed) { }
                        Spacer()
                    }
                }
            }
            Spacer()
            VStack {
                Spacer()
                ForEach(1...howManyButtons, id: \.self) { number in
                    let numberOfButtons = number % 2
                    if numberOfButtons == 0 {
                        Button(action: buttonPressed) {
                            ZStack {
                                Text("\(number)")
                                    .foregroundColor(.black)
                                    .zIndex(1)
                                Image(systemName: "square.fill")
                            }
                        }
                        .scaleEffect(3)
                        .alert(timeOfButtonPress, isPresented: $buttonWasPressed) { }
                        Spacer()
                    }
                }
            }
            Spacer()
        }
    }
    
    func buttonPressed() {
        let timeOfButtonPressed = Text(Date.now, format: .dateTime.hour().minute().second())
        timeOfButtonPress = timeOfButtonPressed
        buttonWasPressed = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
