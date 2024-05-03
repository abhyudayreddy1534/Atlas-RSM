//
//  DealerViewModel.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 29/04/24.
//

import Foundation
import Apollo
import AtlasAPI

class DealerViewModel: ObservableObject {
    @Published var wish: String = ""
    @Published var date: String = ""
    @Published var tempe: String = ""
    @Published var travelTime: String = ""
    @Published var batteries: String = ""
    @Published var weight: String = ""
    @Published var presold: String = ""
    @Published var dealers: [DealerModel] = []
    
    func fetchAllDealers(with truckID: String) {
        let serviceCenterRequest = ServiceCenterRequest(truckId: truckID)
        Network.shared.apollo.fetch(query: GetDealersQuery(request: serviceCenterRequest)) { [self]
            result in
            switch result {
            case .success(let graphQLResult):
//                print("data: \(graphQLResult.data?.serviceCenters)")
                if let centers = graphQLResult.data?.serviceCenters {
                    //serviceCenter = centers
                    
                    if let fName = centers.firstName,
                       let lName = centers.lastName ,
                       let temp = centers.temperatureInCelcius {
                        let sc = ServiceCenterModel(serviceCenter: centers)
                        wish = sc.wishString
                        tempe = "\(sc.temperatureStringInC)"
                        travelTime = sc.travelTime
                        batteries = "\(sc.serviceCenter.batteries)"
                        weight = sc.weightStringInLbs
                        presold = "\(sc.preSold)"
                        dealers = sc.dealers
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct ServiceCenterModel {
    var serviceCenter: GetDealersQuery.Data.ServiceCenters
    
    var dealers: [DealerModel] {
        serviceCenter.dealers!.map { a in
            DealerModel(dealer: a!)
        }
    }

    var id: Int! {
        serviceCenter.id!
    }
    
    var temperatureInCelcius: Int? {
        serviceCenter.temperatureInCelcius
    }
    
    var firstName: String! {
        serviceCenter.firstName
    }
    var lastName: String! {
        serviceCenter.lastName
    }
    
    var travelTime: String! {
        serviceCenter.travelTime
    }
    
    var weightInLbs: Int! {
        serviceCenter.weightInLbs
    }
    
    var preSold: Int! {
        serviceCenter.preSoldCount
    }
    
//    var dealers: [DealerModel] {
//        serviceCenter.dealers.map(DealerModel.init)
//    }
        
    var wishString : String {
        let currentHour = getCurrentHour()
        var wishString = "Good evening"
        if currentHour >= 6 && currentHour < 12 {
            wishString = "Good morning"
        }
        else if currentHour >= 12 && currentHour <= 17 {
            wishString = "Good afternoon"
        }
        return "\(wishString), \(lastName ?? "")"
    }
    
    var temperatureStringInC : String {
        return "\(temperatureInCelcius ?? 0)°C"
    }
    
    var weightStringInLbs: String {
        return "\(weightInLbs ?? 0)Lbs"
    }
    
//    var routeString: String {
//        "Route : \(routeTravelled)"
//    }
    
    private func getCurrentHour() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        return hour
    }
    
}

struct DealerModel {
    let dealer: GetDealersQuery.Data.ServiceCenters.Dealer
    
    var id: Int {
        dealer.id!
    }
    
    var status: Bool {
        dealer.status!
    }
    
    var name: String {
        dealer.name!
    }
    
    var location: String {
        dealer.location!
    }
    
    var totalBatteries: Int {
        dealer.totalBatteries!
    }
    
    var profileURL: String {
        dealer.profileURL!
    }
    
    var presoldBatteries: Int {
        dealer.presoldBatteries!
    }
    
    var batteriesCount: Int {
        dealer.batteriesCount!
    }
    var totalWeightInLbs: Int {
        dealer.totalWeightInLbs!
    }
    var totalWeightInKgs: Int {
        dealer.totalWeightInKgs!
    }
    var lastDeliveredDate: String {
        dealer.lastDeliveredDate!
    }
    var idLoadSkipped: Bool {
        dealer.loadSkipped!
    }
    var isLoadCompleted: Bool {
        dealer.loadCompleted!
    }
    
    var products: [ProductModel] {
        dealer.products!.map { product in
            ProductModel(product: product!)
        }
    }
    
    var notes: [NoteModel] {
        dealer.notes!.map { note in
            NoteModel(note: note!)
        }
    }
    
    var weightInKgs : String {
        "\(totalWeightInKgs) Kgs"
    }
    
    var deliveryDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        guard let date = dateFormatter.date(from: lastDeliveredDate) else { return "" }
        dateFormatter.dateFormat = "EEE MM/dd/yy"
        
        return dateFormatter.string(from: date)
    }
}

struct ProductModel {
    let product: GetDealersQuery.Data.ServiceCenters.Dealer.Product
    var id: Int {
        product.id!
    }
    
    var proposed: Int {
        product.proposed!
    }
    
    var name: String {
        product.name!
    }
    
    var shelf: String {
        product.shelf!
    }
    
    var total: Int {
        product.total!
    }
    
    var bayNumber: String {
        product.bayNumber!
    }
}

struct NoteModel {
    let note: GetDealersQuery.Data.ServiceCenters.Dealer.Note
    
    var id: Int {
        note.id!
    }
    
    var name: String {
        note.note!
    }
}
