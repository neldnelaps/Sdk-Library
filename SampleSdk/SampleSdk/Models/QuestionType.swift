//
// QuestionType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип вопроса. */
public enum QuestionType: String, Codable, CaseIterable {
    case string = "String"
    case select = "Select"
    case date = "Date"
    case check = "Check"
    case int = "Int"
    case double = "Double"
}
