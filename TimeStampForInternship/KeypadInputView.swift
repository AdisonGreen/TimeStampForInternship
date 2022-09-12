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
    @State private var startButtonHasNotBeenPressed = true
    
    var body: some View {
        VStack {
            
            if startButtonHasNotBeenPressed == true {
                Button {
                    startTheTest()
                } label: {
                    Text("Start")
                }
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
                .font(.title)
                .background(.blue)
                .cornerRadius(40)
                .shadow(radius: 3)
                .frame(minWidth: 1, maxWidth: .infinity)
                .navigationTitle("Keypad")
                .toolbar {
                    Button {
                        convertAndEmailTheData()
                    } label: {
                        Text("Done")
                    }
                    .disabled(startButtonHasNotBeenPressed)

                }
            } else {
                TextField("Press a key", text: $userInput)
                    .keyboardType(.numberPad)
            
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
                        Button {
                            convertAndEmailTheData()
                        } label: {
                            Text("Done")
                        }
                        .disabled(startButtonHasNotBeenPressed)

                    }
            }

           
                
        }
    }
    
    func startTheTest() {
        startButtonHasNotBeenPressed = false
    }
    
    func convertAndEmailTheData() {
        EmailHelper.shared.sendEmail(subject: "Fruit Fly Data", body: "", to: "adisonthereshiram@gmail.com")
    }
        
    func checkInputInTextField(input: String) {
        switch input {
        case "0":
            print("Button 0 was pressed")
            buttonPressed(buttonNumber: "0")
        case "1":
            print("Button 1 was pressed")
            buttonPressed(buttonNumber: "1")
        case "2":
            print("Button 2 was pressed")
            buttonPressed(buttonNumber: "2")
        case "3":
            print("Button 3 was pressed")
            buttonPressed(buttonNumber: "3")
        case "4":
            print("Button 4 was pressed")
            buttonPressed(buttonNumber: "4")
        case "5":
            print("Button 5 was pressed")
            buttonPressed(buttonNumber: "5")
        case "6":
            print("Button 6 was pressed")
            buttonPressed(buttonNumber: "6")
        case "7":
            print("Button 7 was pressed")
            buttonPressed(buttonNumber: "7")
        case "8":
            print("Button 8 was pressed")
            buttonPressed(buttonNumber: "8")
        case "9":
            print("Button 9 was pressed")
            buttonPressed(buttonNumber: "9")
        case "":
            print("Case to stop default from being called")
        default:
            print("Not valid input")
        }
    }
    
    func buttonPressed(buttonNumber: String) {
        let timeOfButtonPress = "\(Date.now.formatted(.dateTime.hour().minute().second()))"
        
        if buttonPressedForFirstTime == true {
            buttonPressData.append([buttonNumber: timeOfButtonPress])
        } else {
            buttonPressData = [[buttonNumber: timeOfButtonPress]]
            buttonPressedForFirstTime = true
        }
    }
}

struct KeypadInputView_Previews: PreviewProvider {
    static var previews: some View {
        KeypadInputView()
    }
}
