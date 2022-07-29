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
    
    var body: some View {
        NavigationView {
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    ForEach(1...howManyButtons, id: \.self) { number in
                        let numberOfButtons = number % 2
                        if numberOfButtons != 0 {
                            Button(action: { buttonPressed(button: number) }) {
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
                        if numberOfButtons == 0 {
                            Button(action: { buttonPressed(button: number) }) {
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
            }
            .navigationTitle("Main Screen")
                .toolbar {
                    NavigationLink {
                        DataView()
                    } label: {
                        Text("Done")
                    }
                }
        }
    }
    
    func buttonPressed(button: Int) {
        let timeOfButtonPress = "\(Date.now.formatted(.dateTime.hour().minute().second()))"
        
        if buttonPressedForFirstTime == true {
            buttonPressData.append([button: timeOfButtonPress])
            print(buttonPressData)
        } else {
            buttonPressData = [[button: timeOfButtonPress]]
            print(buttonPressData)
            buttonPressedForFirstTime = true
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TenButtonsView()
    }
}
