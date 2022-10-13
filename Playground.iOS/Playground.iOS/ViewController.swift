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
        // Do any additional setup after loading the view.
       /* var currentTask =  BrandsAPI.brandsGetBrands(filterState: BrandInfoState.normal, filterFrom: 0, filterCount: 10){
            (result, error) in guard result != nil else {
                return
            }
            for var item in result?.data ?? []{
                print(item?.contentType.identifier)
               // print(item.id)
                //print(item.name)
                //print(item.images)
                //print(item.description)
                //print(item.url)
            }
        }
        */
        
        
        //BF628327-5F31-4AE9-A01B-766E085098E0
        /*var currentBrandTask =  BrandsAPI.brandsGetBrand(id: "BF628327-5F31-4AE9-A01B-766E085098E0"){ //completion:  <#T##((ResultModelOfBrandModel?, Error?) -> Void)##((ResultModelOfBrandModel?, Error?) -> Void)##(_ data: ResultModelOfBrandModel?, _ error: Error?) -> Void#>) {
            (result, error) in guard result != nil else {
                return
            }
            print("brandsGetBrand")
            print(result?.data?.id)
            print(result?.data?.name)
            print(result?.data?.images)
            print(result?.data?.description)
        }
*/
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
        
        var currentTaskCard = CardAPI.cardGetCards(){
            (resultCard, errorCard) in guard resultCard != nil else {
                return
            }
            for var item in resultCard?.data ?? [] {
                print(item.id)
                print(item.number)
                print(item.state)
                print(item.accumulated)
                print(item.barCode)
            }
        }
    }
}

