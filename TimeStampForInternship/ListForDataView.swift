//
//  ListForDataView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/26/22.
//

import SwiftUI

struct ListForDataView: View {
    var buttonAndTime: [String: String]
    
    var body: some View {
        HStack {
            if buttonAndTime.first != nil {
                Text(buttonAndTime.first?.key ?? "")
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            if buttonAndTime.first != nil {
                Text(buttonAndTime.first?.value ?? "")
            }
        }
    }
}

struct ListForDataView_Previews: PreviewProvider {
    static var previews: some View {
        ListForDataView(buttonAndTime: ["1": "11am"])
    }
}
