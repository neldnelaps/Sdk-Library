//
// EmissionNumberTemplateAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class EmissionNumberTemplateAPI {

    /**
     Возвращает шаблон для генерации номеров выпусков по его ID.
     
     - parameter id: (path) ID шаблона уведомлений. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func emissionNumberTemplateGetEmissionTemplate(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfNumberTemplateViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return emissionNumberTemplateGetEmissionTemplateWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает шаблон для генерации номеров выпусков по его ID.
     - GET /v1.2/emissionNumberTemplates/{id}
     - parameter id: (path) ID шаблона уведомлений. 
     - returns: RequestBuilder<ResultModelOfNumberTemplateViewModel> 
     */
    open class func emissionNumberTemplateGetEmissionTemplateWithRequestBuilder(id: Int) -> RequestBuilder<ResultModelOfNumberTemplateViewModel> {
        var localVariablePath = "/v1.2/emissionNumberTemplates/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfNumberTemplateViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получение списка всех шаблонов для генерации номеров выпусков.
     
     - parameter filterFrom: (query) Начало выборки. (optional)
     - parameter filterCount: (query) Количество. (optional)
     - parameter filterEmissionType: (query) Тип шаблона уведомлений. (optional)
     - parameter filterTextSubStr: (query) Подстрока текстового описания шаблона. (optional)
     - parameter filterShowMode: (query) Режим отображения архивных шаблонов. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func emissionNumberTemplateGetEmissionTemplates(filterFrom: Int? = nil, filterCount: Int? = nil, filterEmissionType: EmissionTypeEnum? = nil, filterTextSubStr: String? = nil, filterShowMode: ArchivedState? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfNumberTemplateViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return emissionNumberTemplateGetEmissionTemplatesWithRequestBuilder(filterFrom: filterFrom, filterCount: filterCount, filterEmissionType: filterEmissionType, filterTextSubStr: filterTextSubStr, filterShowMode: filterShowMode).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получение списка всех шаблонов для генерации номеров выпусков.
     - GET /v1.2/emissionNumberTemplates
     - parameter filterFrom: (query) Начало выборки. (optional)
     - parameter filterCount: (query) Количество. (optional)
     - parameter filterEmissionType: (query) Тип шаблона уведомлений. (optional)
     - parameter filterTextSubStr: (query) Подстрока текстового описания шаблона. (optional)
     - parameter filterShowMode: (query) Режим отображения архивных шаблонов. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfNumberTemplateViewModel> 
     */
    open class func emissionNumberTemplateGetEmissionTemplatesWithRequestBuilder(filterFrom: Int? = nil, filterCount: Int? = nil, filterEmissionType: EmissionTypeEnum? = nil, filterTextSubStr: String? = nil, filterShowMode: ArchivedState? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfNumberTemplateViewModel> {
        let localVariablePath = "/v1.2/emissionNumberTemplates"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.emissionType": filterEmissionType?.encodeToJSON(),
            "filter.textSubStr": filterTextSubStr?.encodeToJSON(),
            "filter.showMode": filterShowMode?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfNumberTemplateViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Восстановить из архива шаблон для генерации номеров выпусков.
     
     - parameter id: (path) Идентификатор. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func emissionNumberTemplateRestoreEmissionNumberTemplate(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return emissionNumberTemplateRestoreEmissionNumberTemplateWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Восстановить из архива шаблон для генерации номеров выпусков.
     - POST /v1.2/emissionNumberTemplates/{id}/restore
     - parameter id: (path) Идентификатор. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func emissionNumberTemplateRestoreEmissionNumberTemplateWithRequestBuilder(id: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/emissionNumberTemplates/{id}/restore"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}