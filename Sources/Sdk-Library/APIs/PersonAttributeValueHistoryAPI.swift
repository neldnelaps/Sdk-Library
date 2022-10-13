//
// PersonAttributeValueHistoryAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PersonAttributeValueHistoryAPI {

    /**
     Получить историю изменения значения атрибута пользователя.
     
     - parameter personId: (path) Id пользователя. 
     - parameter attributeId: (path) Id атрибута. 
     - parameter filterCreateDateFrom: (query) Начальная дата периода в формате 0000-00-00T00 00 00Z (Если не задана, то - самая ранняя). (optional)
     - parameter filterCreateDateTo: (query) Конечная дата периода в формате 0000-00-00T00 00 00Z.(Если не задана, то - самая поздняя). (optional)
     - parameter filterSortDescendingByCreateDateTime: (query) Тип сортировки (true-по убыванию, false-по возрастанию). (optional)
     - parameter filterFrom: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter filterCount: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func personAttributeValueHistoryGetPersonAttributeHistory(personId: Int, attributeId: Int, filterCreateDateFrom: String? = nil, filterCreateDateTo: String? = nil, filterSortDescendingByCreateDateTime: Bool? = nil, filterFrom: Int? = nil, filterCount: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPersonAttributeValueHistoryModel?, _ error: Error?) -> Void)) -> RequestTask {
        return personAttributeValueHistoryGetPersonAttributeHistoryWithRequestBuilder(personId: personId, attributeId: attributeId, filterCreateDateFrom: filterCreateDateFrom, filterCreateDateTo: filterCreateDateTo, filterSortDescendingByCreateDateTime: filterSortDescendingByCreateDateTime, filterFrom: filterFrom, filterCount: filterCount).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить историю изменения значения атрибута пользователя.
     - GET /v1.2/users/{personId}/attributes/{attributeId}/history
     - parameter personId: (path) Id пользователя. 
     - parameter attributeId: (path) Id атрибута. 
     - parameter filterCreateDateFrom: (query) Начальная дата периода в формате 0000-00-00T00 00 00Z (Если не задана, то - самая ранняя). (optional)
     - parameter filterCreateDateTo: (query) Конечная дата периода в формате 0000-00-00T00 00 00Z.(Если не задана, то - самая поздняя). (optional)
     - parameter filterSortDescendingByCreateDateTime: (query) Тип сортировки (true-по убыванию, false-по возрастанию). (optional)
     - parameter filterFrom: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter filterCount: (query) Количество возвращаемых элементов выборки. (optional)
     - returns: RequestBuilder<ResultModelOfPersonAttributeValueHistoryModel> 
     */
    open class func personAttributeValueHistoryGetPersonAttributeHistoryWithRequestBuilder(personId: Int, attributeId: Int, filterCreateDateFrom: String? = nil, filterCreateDateTo: String? = nil, filterSortDescendingByCreateDateTime: Bool? = nil, filterFrom: Int? = nil, filterCount: Int? = nil) -> RequestBuilder<ResultModelOfPersonAttributeValueHistoryModel> {
        var localVariablePath = "/v1.2/users/{personId}/attributes/{attributeId}/history"
        let personIdPreEscape = "\(APIHelper.mapValueToPathItem(personId))"
        let personIdPostEscape = personIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{personId}", with: personIdPostEscape, options: .literal, range: nil)
        let attributeIdPreEscape = "\(APIHelper.mapValueToPathItem(attributeId))"
        let attributeIdPostEscape = attributeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{attributeId}", with: attributeIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.createDateFrom": filterCreateDateFrom?.encodeToJSON(),
            "filter.createDateTo": filterCreateDateTo?.encodeToJSON(),
            "filter.sortDescendingByCreateDateTime": filterSortDescendingByCreateDateTime?.encodeToJSON(),
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPersonAttributeValueHistoryModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}