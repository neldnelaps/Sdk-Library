//
// CustomerActionType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum CustomerActionType: String, Codable, CaseIterable {
    case site = "Site"
    case sms = "Sms"
    case _operator = "Operator"
    case mobileApplication = "MobileApplication"
    case _import = "Import"
    case paper = "Paper"
}
