//
// AttributeType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AttributeType: String, Codable, CaseIterable {
    case string = "String"
    case boolean = "Boolean"
    case numeric = "Numeric"
    case dateTime = "DateTime"
    case image = "Image"
    case video = "Video"
    case html = "Html"
    case dictionary = "Dictionary"
    case mechant = "Mechant"
}