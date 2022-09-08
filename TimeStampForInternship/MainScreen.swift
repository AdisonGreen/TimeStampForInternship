//
//  MainScreen.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 9/8/22.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Spacer()
                Spacer()
                NavigationLink("Keypad", destination: KeypadInputView())
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
                .font(.title)
                .background(.blue)
                .cornerRadius(40)
                .shadow(radius: 3)
                .frame(minWidth: 1, maxWidth: .infinity)
                Spacer()
                NavigationLink("No Keypad", destination: TenButtonsView())
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
                .font(.title)
                .background(.blue)
                .cornerRadius(40)
                .shadow(radius: 3)
                .frame(minWidth: 1, maxWidth: .infinity)
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
