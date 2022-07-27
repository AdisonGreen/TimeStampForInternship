//
//  ListForDataView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/26/22.
//

import SwiftUI

struct ListForDataView: View {
    var buttonAndTime: [Int: String]
    
    var body: some View {
        HStack {
            Text("\(buttonAndTime.first?.key ?? 0)")
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Text("\(buttonAndTime.first?.value ?? "")")
        }
    }
}

struct ListForDataView_Previews: PreviewProvider {
    static var previews: some View {
        ListForDataView(buttonAndTime: [1: "11am"])
    }
}
