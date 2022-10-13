//
// CatalogAttributeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CatalogAttributeAPI {

    /**
     Атрибуты в каталоге партнера.
     
     - parameter partnerId: (path) Id партнера. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func catalogAttributeGetByPartner(partnerId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfCatalogAttributeViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return catalogAttributeGetByPartnerWithRequestBuilder(partnerId: partnerId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Атрибуты в каталоге партнера.
     - GET /v1.2/catalogs/{partnerId}/attributes
     - parameter partnerId: (path) Id партнера. 
     - returns: RequestBuilder<ResultModelOfListOfCatalogAttributeViewModel> 
     */
    open class func catalogAttributeGetByPartnerWithRequestBuilder(partnerId: Int) -> RequestBuilder<ResultModelOfListOfCatalogAttributeViewModel> {
        var localVariablePath = "/v1.2/catalogs/{partnerId}/attributes"
        let partnerIdPreEscape = "\(APIHelper.mapValueToPathItem(partnerId))"
        let partnerIdPostEscape = partnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{partnerId}", with: partnerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfCatalogAttributeViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получает список значений атрибута в выбранном диапазоне.
     
     - parameter partnerId: (path) Id партнера. 
     - parameter attributeId: (path) ID атрибута. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter nameSubstr: (query) Подстрока поиска по названию. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func catalogAttributeGetValues(partnerId: Int, attributeId: Int, from: Int? = nil, count: Int? = nil, nameSubstr: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfGoodsAttributeValueViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return catalogAttributeGetValuesWithRequestBuilder(partnerId: partnerId, attributeId: attributeId, from: from, count: count, nameSubstr: nameSubstr).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получает список значений атрибута в выбранном диапазоне.
     - GET /v1.2/catalogs/{partnerId}/attributes/{attributeId}/values
     - parameter partnerId: (path) Id партнера. 
     - parameter attributeId: (path) ID атрибута. 
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter nameSubstr: (query) Подстрока поиска по названию. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfGoodsAttributeValueViewModel> 
     */
    open class func catalogAttributeGetValuesWithRequestBuilder(partnerId: Int, attributeId: Int, from: Int? = nil, count: Int? = nil, nameSubstr: String? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfGoodsAttributeValueViewModel> {
        var localVariablePath = "/v1.2/catalogs/{partnerId}/attributes/{attributeId}/values"
        let partnerIdPreEscape = "\(APIHelper.mapValueToPathItem(partnerId))"
        let partnerIdPostEscape = partnerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{partnerId}", with: partnerIdPostEscape, options: .literal, range: nil)
        let attributeIdPreEscape = "\(APIHelper.mapValueToPathItem(attributeId))"
        let attributeIdPostEscape = attributeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{attributeId}", with: attributeIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "nameSubstr": nameSubstr?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfGoodsAttributeValueViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
