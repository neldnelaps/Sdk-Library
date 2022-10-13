//
// LegalAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LegalAPI {

    /**
     Возвращает список доступных юридических лиц.
     
     - parameter name: (query) Подстрока для поиска по названию юридического лица. (optional)
     - parameter partnersIds: (query) Внутренние идентификаторы Партнеров. (optional)
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter loyaltyProgramId: (query) Внутренний идентификатор Программы лояльности. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func legalGetLegals(name: String? = nil, partnersIds: [Int]? = nil, from: Int? = nil, count: Int? = nil, loyaltyProgramId: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfLegalViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return legalGetLegalsWithRequestBuilder(name: name, partnersIds: partnersIds, from: from, count: count, loyaltyProgramId: loyaltyProgramId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список доступных юридических лиц.
     - GET /v1.2/legals
     - parameter name: (query) Подстрока для поиска по названию юридического лица. (optional)
     - parameter partnersIds: (query) Внутренние идентификаторы Партнеров. (optional)
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter loyaltyProgramId: (query) Внутренний идентификатор Программы лояльности. (optional)
     - returns: RequestBuilder<ResultModelOfListOfLegalViewModel> 
     */
    open class func legalGetLegalsWithRequestBuilder(name: String? = nil, partnersIds: [Int]? = nil, from: Int? = nil, count: Int? = nil, loyaltyProgramId: Int? = nil) -> RequestBuilder<ResultModelOfListOfLegalViewModel> {
        let localVariablePath = "/v1.2/legals"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": name?.encodeToJSON(),
            "partnersIds": partnersIds?.encodeToJSON(),
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "loyaltyProgramId": loyaltyProgramId?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfLegalViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
