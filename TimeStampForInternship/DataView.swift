//
//  DataView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/26/22.
//

import SwiftUI

let myDude: [[String: Int]] = [["Bruh": 1], ["Bro": 2]]

struct DataView: View {
    var body: some View {
        List {
            ForEach(myDude, id: \.self) { data in
                Text(data.first?.key ?? "")
                Text(data.first?.value.description ?? "")
            }
        }
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
