//
//  SourceEncoding.swift
//  
//
//  Created by Simon Støvring on 17/12/2020.
//

import Foundation
import TreeSitter

@objc public enum SourceEncoding: Int {
    case utf8 = 0
    case utf16 = 1
}

extension SourceEncoding {
    var treeSitterEncoding: TSInputEncoding {
        switch self {
        case .utf8:
            return TSInputEncodingUTF8
        case .utf16:
            return TSInputEncodingUTF16
        }
    }

    var swiftEncoding: String.Encoding {
        switch self {
        case .utf8:
            return .utf8
        case .utf16:
            return .utf16
        }
    }
}
