//
//  KeypadInputView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/29/22.
//

import SwiftUI

struct KeypadInputView: View {
    @State private var userInput = ""
    @State private var inputInTextField = false
    @State private var buttonPressedForFirstTime = false
    
    var body: some View {
        NavigationView {
            TextField("Press a key", text: $userInput)
                .onChange(of: userInput) { newValue in
                    inputInTextField = true
                    userInput = ""
                    
                    checkInputInTextField(input: newValue)
                    
                    if userInput == "" {
                        inputInTextField = false
                    }
                    
                }
                .disabled(inputInTextField)
                .navigationTitle("Keypad")
                .toolbar {
                    NavigationLink {
                        DataView()
                    } label: {
                        Text("Done")
                    }
                }
        }
    }
        
    func checkInputInTextField(input: String) {
        switch input {
        case "0":
            print("Button 0 was pressed")
        case "1":
            print("Button 1 was pressed")
        case "2":
            print("Button 2 was pressed")
        case "3":
            print("Button 3 was pressed")
        case "4":
            print("Button 4 was pressed")
        case "5":
            print("Button 5 was pressed")
        case "6":
            print("Button 6 was pressed")
        case "7":
            print("Button 7 was pressed")
        case "8":
            print("Button 8 was pressed")
        case "9":
            print("Button 9 was pressed")
        case "":
            print("Worthless print")
        default:
            print("Not valid input")
        }
    }
    
//    func buttonPressed(button: String) {
//        
//        if buttonPressedForFirstTime == true {
//            buttonPressData.append([button: timeOfButtonPress])
//            print(buttonPressData)
//        } else {
//            buttonPressData = [[button: timeOfButtonPress]]
//            print(buttonPressData)
//            buttonPressedForFirstTime = true
//        }
//        
//    }
}

struct KeypadInputView_Previews: PreviewProvider {
    static var previews: some View {
        KeypadInputView()
    }
}
