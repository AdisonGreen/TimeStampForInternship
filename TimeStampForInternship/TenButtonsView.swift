//
//  ContentView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/18/22.
//

import SwiftUI

struct TenButtonsView: View {
    @State private var buttonPressedForFirstTime = false
    let howManyButtons = 10
    static let sharedTenButtons = TenButtonsView()
    @State private var startButtonHasNotBeenPressed = true
    
    var body: some View {
            HStack {
                if startButtonHasNotBeenPressed == false {
                    Spacer()
                    VStack {
                        Spacer()
                        ForEach(1...howManyButtons, id: \.self) { number in
                            let numberOfButtons = number % 2
                            let numberAsAString = number.description
                            if numberOfButtons != 0 {
                                Button(action: { buttonPressed(button: numberAsAString) }) {
                                    ZStack {
                                        Text("\(number)")
                                            .foregroundColor(.black)
                                            .zIndex(1)
                                        Image(systemName: "square.fill")
                                    }
                                }
                                .scaleEffect(3)
                                Spacer()
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        Spacer()
                        ForEach(1...howManyButtons, id: \.self) { number in
                            let numberOfButtons = number % 2
                            let numberAsAString = number.description
                            if numberOfButtons == 0 {
                                Button(action: { buttonPressed(button: numberAsAString) }) {
                                    ZStack {
                                        Text("\(number)")
                                            .foregroundColor(.black)
                                            .zIndex(1)
                                        Image(systemName: "square.fill")
                                    }
                                }
                                .scaleEffect(3)
                                Spacer()
                            }
                        }
                    }
                    Spacer()
                } else {
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
                    .navigationTitle("No Keypad")
                    .toolbar {
                        Button {
                            sendEmailAndConvert()
                        } label: {
                            Text("Done")
                        }
                        .disabled(startButtonHasNotBeenPressed)

                    }
                }
            }
            .navigationTitle("No Keypad")
                .toolbar {
                    Button {
                        sendEmailAndConvert()
                    } label: {
                        Text("Done")
                    }
                    .disabled(startButtonHasNotBeenPressed)

        }
    }
    
    func startTheTest() {
        startButtonHasNotBeenPressed = false
    }
    
    func sendEmailAndConvert() {
        EmailHelper.shared.sendEmail(subject: "Fruit Fly Data", body: "", to: "Jchaston@byu.edu")
    }
    
    func buttonPressed(button: String) {
        let timeOfButtonPress = "\(Date.now.formatted(.dateTime.hour().minute().second()))"
        
        if buttonPressedForFirstTime == true {
            buttonPressData.append([button: timeOfButtonPress])
        } else {
            buttonPressData = [[button: timeOfButtonPress]]
            buttonPressedForFirstTime = true
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TenButtonsView()
    }
}
