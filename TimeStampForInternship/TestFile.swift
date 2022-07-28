//
//  TestFile.swift
//  TimeStampForInternship
//
//  Created by Adison Green on 7/27/22.
//

import Foundation
import SwiftUI

class TestFile {
    @ObservedObject var bruh: TimeOfButtonPressData = TimeOfButtonPressData(timeOfButtonData: [[:]])
    static let shared = TestFile()
}
