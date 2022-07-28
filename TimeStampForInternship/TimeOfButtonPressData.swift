//
//  TimeOfButtonPressData.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/26/22.
//

import Foundation
import SwiftUI

class TimeOfButtonPressData: ObservableObject {
    @Published var timeOfButtonData: [[Int: String]]
    
    init(timeOfButtonData: [[Int: String]]) {
        self.timeOfButtonData = timeOfButtonData
    }
}
