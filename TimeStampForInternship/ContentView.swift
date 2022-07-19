//
//  ContentView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/18/22.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonWasPressed = false
    @State private var TimeOfButtonPress = Text("")
    let howManyButtons = 10
    
    var body: some View {
        VStack {
            ForEach(1...howManyButtons, id: \.self) { number in
                HStack {
                    Button(action: buttonPressed) {
                        ZStack {
                            Text("\(number)")
                                .foregroundColor(.black)
                                .zIndex(1)
                            Image(systemName: "circle.fill")
                        }
                    }
                    .alert(TimeOfButtonPress, isPresented: $buttonWasPressed) { }
                }
            }
        }
        
    }
    
    func buttonPressed() {
        let timeOfButtonPressed = Text(Date.now, format: .dateTime.hour().minute().second())
        TimeOfButtonPress = timeOfButtonPressed
        buttonWasPressed = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
