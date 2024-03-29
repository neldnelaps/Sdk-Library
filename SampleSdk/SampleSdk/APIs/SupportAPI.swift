//
// SupportAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SupportAPI {

    /**
     Получить переписку с техподдержкой определенный период.
     
     - parameter from: (query) Индекс начала выборки. (optional)
     - parameter count: (query) Число сообщений. (optional)
     - parameter filterFromDate: (query)  (optional)
     - parameter filterToDate: (query)  (optional)
     - parameter filterContainsText: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func supportGetMessages(from: Int? = nil, count: Int? = nil, filterFromDate: String? = nil, filterToDate: String? = nil, filterContainsText: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfOwnedSupportMessage?, _ error: Error?) -> Void)) -> RequestTask {
        return supportGetMessagesWithRequestBuilder(from: from, count: count, filterFromDate: filterFromDate, filterToDate: filterToDate, filterContainsText: filterContainsText).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить переписку с техподдержкой определенный период.
     - GET /v1.2/Support/Messages
     - parameter from: (query) Индекс начала выборки. (optional)
     - parameter count: (query) Число сообщений. (optional)
     - parameter filterFromDate: (query)  (optional)
     - parameter filterToDate: (query)  (optional)
     - parameter filterContainsText: (query)  (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfOwnedSupportMessage> 
     */
    open class func supportGetMessagesWithRequestBuilder(from: Int? = nil, count: Int? = nil, filterFromDate: String? = nil, filterToDate: String? = nil, filterContainsText: String? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfOwnedSupportMessage> {
        let localVariablePath = "/v1.2/Support/Messages"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "filter.fromDate": filterFromDate?.encodeToJSON(),
            "filter.toDate": filterToDate?.encodeToJSON(),
            "filter.containsText": filterContainsText?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfOwnedSupportMessage>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
