//
//  ViewController.swift
//  SDK2809
//
//  Created by Nelaps on 03.10.2022.
//

import UIKit
import Sdk_Library

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        var currentOffersTask = OfferAPI.offerGetOffers(){
            (result, error) in guard result != nil else {
                return
            }
            print("offerGetOffers")
            for var item in result?.data ?? []{
                print(item.id)
                print(item.title)
                print(item.description)
                print(item.begin)
                print(item.end)
            }
        }
        
        //3610
        var currentOfferTask =  OfferAPI.offerGetDetails(id: 3610) {
            (result, error) in guard result != nil else {
                return
            }
            print("offerGetDetails")
            print(result?.data?.description)
            print(result?.data?.first)
        }
        
        var currentMerchsTask = MerchantsAPI.merchantsGetMerchants() {
            (result, error) in guard result != nil else {
                return
            }
            print("merchantsGetMerchants")
            for var item in result?.data ?? []{
                print(item.id)
                print(item.title)
                print(item.description)
                print(item.contacts)
                print(item.additionalInfo)
            }
        }
        
        var auth = AuthAPI.authtorization(username: "79999999999", password: "111111"){
            (result, errorCard) in guard result != nil else {
                return
            }
            print("AuthAPI.authtorization")
            print(result)

            Client.AccessToken = result?.accessToken
            Client.RefreshToken = result?.refreshToken
            OpenAPIClientAPI.customHeaders = ["Authorization" : "Bearer " + Client.AccessToken!]
            
            var currentTaskCard = CardAPI.cardGetCards(){
                (resultCard, errorCard) in guard resultCard != nil else {
                    return
                }
                print("CardAPI.cardGetCards")
                for var item in resultCard?.data ?? [] {
                    print(item.id)
                    print(item.number)
                    print(item.state)
                    print(item.accumulated)
                    print(item.barCode)
                }
            }
            
            var refresh = AuthAPI.refresh(){
                 (resultRef, errorCard) in guard resultRef != nil else {
                     return
                 }
                print("AuthAPI.refresh")
                print(resultRef)
                Client.AccessToken = resultRef?.accessToken
                Client.RefreshToken = resultRef?.refreshToken
                OpenAPIClientAPI.customHeaders = ["Authorization" : "Bearer " + Client.AccessToken!]
             }
        }
    }
}
