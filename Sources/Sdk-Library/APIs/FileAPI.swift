//
// FileAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FileAPI {

    /**
     Возвращает информацию о параметрах файла по его внутреннему идентификатору.
     
     - parameter id: (path) Внутренний идентификатор файла. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fileGet(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfFileEdit?, _ error: Error?) -> Void)) -> RequestTask {
        return fileGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о параметрах файла по его внутреннему идентификатору.
     - GET /v1.2/files/{id}
     - parameter id: (path) Внутренний идентификатор файла. 
     - returns: RequestBuilder<ResultModelOfFileEdit> 
     */
    open class func fileGetWithRequestBuilder(id: Int) -> RequestBuilder<ResultModelOfFileEdit> {
        var localVariablePath = "/v1.2/files/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfFileEdit>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает информацию о параметрах файла по его внешнему идентификатору.
     
     - parameter guid: (path) Внешний идентификатор файла. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fileGetFileByGuid(guid: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfFileEdit?, _ error: Error?) -> Void)) -> RequestTask {
        return fileGetFileByGuidWithRequestBuilder(guid: guid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о параметрах файла по его внешнему идентификатору.
     - GET /v1.2/files/guid/{guid}
     - Используется только в витрине.
     - parameter guid: (path) Внешний идентификатор файла. 
     - returns: RequestBuilder<ResultModelOfFileEdit> 
     */
    open class func fileGetFileByGuidWithRequestBuilder(guid: String) -> RequestBuilder<ResultModelOfFileEdit> {
        var localVariablePath = "/v1.2/files/guid/{guid}"
        let guidPreEscape = "\(APIHelper.mapValueToPathItem(guid))"
        let guidPostEscape = guidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{guid}", with: guidPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfFileEdit>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список файлов с информацией об их параметрах.
     
     - parameter filterFrom: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter filterCount: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter filterFileName: (query) Название файла. (optional)
     - parameter filterFileGuid: (query) Внешний идентификатор файла. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fileGets(filterFrom: Int? = nil, filterCount: Int? = nil, filterFileName: String? = nil, filterFileGuid: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfFileEdit?, _ error: Error?) -> Void)) -> RequestTask {
        return fileGetsWithRequestBuilder(filterFrom: filterFrom, filterCount: filterCount, filterFileName: filterFileName, filterFileGuid: filterFileGuid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список файлов с информацией об их параметрах.
     - GET /v1.2/files
     - parameter filterFrom: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter filterCount: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter filterFileName: (query) Название файла. (optional)
     - parameter filterFileGuid: (query) Внешний идентификатор файла. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfFileEdit> 
     */
    open class func fileGetsWithRequestBuilder(filterFrom: Int? = nil, filterCount: Int? = nil, filterFileName: String? = nil, filterFileGuid: String? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfFileEdit> {
        let localVariablePath = "/v1.2/files"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.fileName": filterFileName?.encodeToJSON(),
            "filter.fileGuid": filterFileGuid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfFileEdit>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает максимальный размер загружаемого файла.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func fileMaxSize(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfInt32?, _ error: Error?) -> Void)) -> RequestTask {
        return fileMaxSizeWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает максимальный размер загружаемого файла.
     - GET /v1.2/files/maxSizeFile
     - returns: RequestBuilder<ResultModelOfInt32> 
     */
    open class func fileMaxSizeWithRequestBuilder() -> RequestBuilder<ResultModelOfInt32> {
        let localVariablePath = "/v1.2/files/maxSizeFile"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfInt32>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
