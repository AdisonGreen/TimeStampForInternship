//
//  DataView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/26/22.
//

import SwiftUI

let myDude: [[Int: String]] = [[1: "Bruh"], [2: "Bro"]]

struct DataView: View {
    var body: some View {
        List {
            ForEach(myDude, id: \.self) { data in
                ListForDataView(buttonAndTime: data)
            }
        }
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
