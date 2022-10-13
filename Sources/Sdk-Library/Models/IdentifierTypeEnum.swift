//
// IdentifierTypeEnum.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum IdentifierTypeEnum: String, Codable, CaseIterable {
    case phone = "Phone"
    case email = "Email"
    case personID = "PersonID"
    case personUID = "PersonUID"
    case cardNumber = "CardNumber"
}