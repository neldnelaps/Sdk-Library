//
// MailingDestinationType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип получателей рассылки. */
public enum MailingDestinationType: String, Codable, CaseIterable {
    case targetGroup = "TargetGroup"
    case addressList = "AddressList"
    case person = "Person"
}