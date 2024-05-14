//
//  HomeService.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import Foundation

class HomeService{
    func fetchCoffees() async throws ->[Coffee]{
        return DeveloperPreview().coffees
    }
}
