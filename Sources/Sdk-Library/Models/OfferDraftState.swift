//
// OfferDraftState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Состояния версии как черновика              None &#x3D; 0, версия не является черновиком (уже была подтверждена)              Edit &#x3D; 1, версия является редактируемым в данный момент черновиком              Applied &#x3D; 2, версия является черновиком, требующим подтверждения или отклонения (вносить изменения нельзя)              Rejected &#x3D; 3,  версия является редактируемым в данный момент черновиком, отклоненным на этапе подтверждения. */
public enum OfferDraftState: String, Codable, CaseIterable {
    case _none = "None"
    case edit = "Edit"
    case applied = "Applied"
    case rejected = "Rejected"
}