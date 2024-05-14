//
//  HomeViewModel.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import Foundation

class HomeViewModel:ObservableObject{
    @Published var coffees = [Coffee]()
    private let service:HomeService
    
    init(service: HomeService) {
        self.service = service
        
        Task{await fetchCoffees()}
    }
    func fetchCoffees()async{
        do{
            self.coffees = try await service.fetchCoffees()
            
        }catch{
            print("Failed to fetch all coffees with error: \(error.localizedDescription)")
        }
    }
    
}
