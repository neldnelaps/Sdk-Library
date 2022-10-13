//
// PhoneSettingsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PhoneSettingsAPI {

    /**
     Заархивировать настройку.
     
     - parameter settingId: (path) Идентификатор настройки. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func phoneSettingsArchiveSetting(settingId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return phoneSettingsArchiveSettingWithRequestBuilder(settingId: settingId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Заархивировать настройку.
     - POST /v1.2/PhoneSettings/{settingId}/Archive
     - parameter settingId: (path) Идентификатор настройки. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func phoneSettingsArchiveSettingWithRequestBuilder(settingId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/PhoneSettings/{settingId}/Archive"
        let settingIdPreEscape = "\(APIHelper.mapValueToPathItem(settingId))"
        let settingIdPostEscape = settingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{settingId}", with: settingIdPostEscape, options: .literal, range: nil)
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

    /**
     Создать формат номера телефона.
     
     - parameter model: (query) Новый формат номера. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func phoneSettingsCreateSetting(model: PhoneSettingsViewModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfNullableOfInt32?, _ error: Error?) -> Void)) -> RequestTask {
        return phoneSettingsCreateSettingWithRequestBuilder(model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Создать формат номера телефона.
     - PUT /v1.2/PhoneSettings/Create
     - parameter model: (query) Новый формат номера. 
     - returns: RequestBuilder<ResultModelOfNullableOfInt32> 
     */
    open class func phoneSettingsCreateSettingWithRequestBuilder(model: PhoneSettingsViewModel) -> RequestBuilder<ResultModelOfNullableOfInt32> {
        let localVariablePath = "/v1.2/PhoneSettings/Create"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "model": model.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfNullableOfInt32>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список активных настроек отображения телефона.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func phoneSettingsGetActiveSettingsList(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfPhoneSettingsViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return phoneSettingsGetActiveSettingsListWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список активных настроек отображения телефона.
     - GET /v1.2/PhoneSettings/Active
     - returns: RequestBuilder<ResultModelOfListOfPhoneSettingsViewModel> 
     */
    open class func phoneSettingsGetActiveSettingsListWithRequestBuilder() -> RequestBuilder<ResultModelOfListOfPhoneSettingsViewModel> {
        let localVariablePath = "/v1.2/PhoneSettings/Active"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfPhoneSettingsViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить формат номера телефона по Id.
     
     - parameter settingId: (path) Идентификатор настройки. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func phoneSettingsGetSetting(settingId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPhoneSettingsViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return phoneSettingsGetSettingWithRequestBuilder(settingId: settingId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить формат номера телефона по Id.
     - GET /v1.2/PhoneSettings/{settingId}
     - parameter settingId: (path) Идентификатор настройки. 
     - returns: RequestBuilder<ResultModelOfPhoneSettingsViewModel> 
     */
    open class func phoneSettingsGetSettingWithRequestBuilder(settingId: Int) -> RequestBuilder<ResultModelOfPhoneSettingsViewModel> {
        var localVariablePath = "/v1.2/PhoneSettings/{settingId}"
        let settingIdPreEscape = "\(APIHelper.mapValueToPathItem(settingId))"
        let settingIdPostEscape = settingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{settingId}", with: settingIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPhoneSettingsViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить настройки отображения телефона.
     
     - parameter phoneSettingsFilter: (query) Фильтр. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func phoneSettingsGetSettingsList(phoneSettingsFilter: PhoneSettingsFilter, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfPhoneSettingsViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return phoneSettingsGetSettingsListWithRequestBuilder(phoneSettingsFilter: phoneSettingsFilter).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить настройки отображения телефона.
     - POST /v1.2/PhoneSettings/List
     - parameter phoneSettingsFilter: (query) Фильтр. 
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfPhoneSettingsViewModel> 
     */
    open class func phoneSettingsGetSettingsListWithRequestBuilder(phoneSettingsFilter: PhoneSettingsFilter) -> RequestBuilder<ResultModelOfPagedViewModelOfPhoneSettingsViewModel> {
        let localVariablePath = "/v1.2/PhoneSettings/List"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "phoneSettingsFilter": phoneSettingsFilter.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfPhoneSettingsViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Восстановить настройку.
     
     - parameter settingId: (path) Идентификатор настройки. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func phoneSettingsRestoreSetting(settingId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return phoneSettingsRestoreSettingWithRequestBuilder(settingId: settingId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Восстановить настройку.
     - POST /v1.2/PhoneSettings/{settingId}/Restore
     - parameter settingId: (path) Идентификатор настройки. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func phoneSettingsRestoreSettingWithRequestBuilder(settingId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/PhoneSettings/{settingId}/Restore"
        let settingIdPreEscape = "\(APIHelper.mapValueToPathItem(settingId))"
        let settingIdPostEscape = settingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{settingId}", with: settingIdPostEscape, options: .literal, range: nil)
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

    /**
     Изменить формат номера телефона.
     
     - parameter settingId: (path) Идентификатор настройки. 
     - parameter model: (query) Измененный формат номера. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func phoneSettingsUpdateSetting(settingId: Int, model: PhoneSettingsViewModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return phoneSettingsUpdateSettingWithRequestBuilder(settingId: settingId, model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Изменить формат номера телефона.
     - POST /v1.2/PhoneSettings/{settingId}/Update
     - parameter settingId: (path) Идентификатор настройки. 
     - parameter model: (query) Измененный формат номера. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func phoneSettingsUpdateSettingWithRequestBuilder(settingId: Int, model: PhoneSettingsViewModel) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/PhoneSettings/{settingId}/Update"
        let settingIdPreEscape = "\(APIHelper.mapValueToPathItem(settingId))"
        let settingIdPostEscape = settingIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{settingId}", with: settingIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "model": model.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
