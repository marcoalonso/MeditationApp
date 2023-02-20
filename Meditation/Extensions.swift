//
//  Extensions.swift
//  Meditation
//
//  Created by Marco Alonso Rodriguez on 20/02/23.
//

import Foundation

extension DateComponentsFormatter {
    static let abbreviated: DateComponentsFormatter = {
        print("Initialiting DateComponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .abbreviated
        
        return formatter
    }()
    
    static let postitional: DateComponentsFormatter = {
        print("Initialiting DateComponentsFormatter.abbreviated")
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
}
