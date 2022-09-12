//
//  EmailTestScreen.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 8/30/22.
//

import SwiftUI

struct EmailTestScreen: View {
    var body: some View {
        Button {
            EmailHelper.shared.sendEmail(subject: "Fruit Fly Data", body: "", to: "adisonthereshiram@gmail.com")
        } label: {
            Text("Send Email")
        }

    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

struct EmailTestScreen_Previews: PreviewProvider {
    static var previews: some View {
        EmailTestScreen()
    }
}
