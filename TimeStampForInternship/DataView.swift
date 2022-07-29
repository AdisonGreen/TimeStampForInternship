//
//  DataView.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/26/22.
//

import SwiftUI

struct DataView: View {
    var body: some View {
        List {
            ForEach(buttonPressData, id: \.self) { data in
                ListForDataView(buttonAndTime: data)
            }
        }
        .navigationTitle("Data View")
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
