//
//  DeveloperPreview.swift
//  BlissfulCoffee
//
//  Created by Ekomobong Edeme on 14/05/2024.
//

import Foundation

class DeveloperPreview{
    var coffees:[Coffee]=[
        
        Coffee(title: "Classic Espresso", coffeType: .espresso, price: 2.99, rating: 4.5, noOfComments: 120, description: "Our Classic Espresso offers a robust and intense coffee experience with deep, rich flavors. Perfect for those who appreciate a strong, aromatic cup. Made from carefully selected beans, it's a favorite among purists. Available in small, medium, and large sizes.", sizes: [.Small, .Medium , .Large], image: .coffee1),
        
        Coffee(title: "Vanilla Latte", coffeType: .latte, price: 3.99, rating: 4.7, noOfComments: 200, description: "Smooth and creamy, the Vanilla Latte combines rich espresso with steamed milk and a touch of vanilla syrup. It's sweet but not overpowering, making it a delightful choice for any time of day. Available in small and  medium sizes.", sizes: [.Small, .Medium], image: .coffee2),
        
        Coffee(title: "Caramel Cappuccino", coffeType: .cappuccino, price: 4.29, rating: 4.6, noOfComments: 150, description: "The Caramel Cappuccino is a delightful blend of espresso, steamed milk, and foamed milk, enhanced with a swirl of caramel. It's the perfect balance of sweet and bold, ideal for a cozy afternoon break. Available in medium, and large sizes.", sizes: [.Medium, .Large], image: .coffee3),
        
        Coffee(title: "Americano", coffeType: .americano, price: 2.49, rating: 4.3, noOfComments: 110, description: "Our Americano is a simple yet satisfying blend of espresso and hot water, offering a smooth, mellow flavor with a rich aroma. It's a great option for those who enjoy the strength of espresso but with a lighter body. Available in small, medium, and large sizes.", sizes: [.Small, .Medium, .Large], image: .coffee4),
        
        Coffee(title: "Macchiato", coffeType: .macchiato, price: 3.49, rating: 4.4, noOfComments: 130, description: "The Macchiato is a traditional Italian coffee that features a shot of espresso 'marked' with a small amount of foamed milk. It offers a bold, intense flavor with a creamy finish. Available in small and medium sizes.", sizes: [.Small, .Medium], image: .coffee5),
        
        Coffee(title: "Mocha", coffeType: .mocha, price: 4.59, rating: 4.8, noOfComments: 210, description: "Our Mocha blends the rich flavors of espresso, steamed milk, and chocolate syrup, topped with whipped cream. It's a luxurious treat that combines the best of coffee and chocolate. Available in small, medium, and large sizes.", sizes: [.Small, .Medium, .Large], image: .coffee3),
        
        Coffee(title: "Flat White", coffeType: .flatWhite, price: 3.79, rating: 4.7, noOfComments: 175, description: "The Flat White is a velvety smooth coffee made with a shot of espresso and steamed milk, offering a creamy texture and strong coffee flavor. It's a favorite among those who enjoy a balanced coffee-to-milk ratio. Available in small and medium sizes.", sizes: [.Small, .Medium, .Large], image: .coffee1),
        
        Coffee(title: "Espresso",
               coffeType: .espresso,
               price: 2.50,
               rating: 4.8,
               noOfComments: 120,
               description: "A strong and concentrated shot of coffee with a bold flavor and crema (a rich, foamy layer on top). Ideal for those who like a powerful coffee kick.",
               sizes: [.Small, .Large], image: .coffee4),
        
        Coffee(title: "Americano",
               coffeType: .espresso,
               price: 3.00,
               rating: 4.3,
               noOfComments: 85,
               description: "Espresso diluted with hot water for a milder taste than straight espresso. Offers a more balanced coffee experience while still maintaining the espresso's bold character.",
               sizes: [.Small, .Medium, .Large], image: .coffee3),
        
        Coffee(title: "Latte",
               coffeType: .latte,
               price: 3.75,
               rating: 4.7,
               noOfComments: 210,
               description: "A smooth and creamy coffee drink made with espresso, steamed milk, and a thin layer of milk foam. The steamed milk adds sweetness and creaminess, making it a more mellow option compared to espresso.",
               sizes: [.Small, .Medium, .Large], image: .coffee5),
        
        Coffee(title: "Cappuccino",
               coffeType: .cappuccino,
               price: 4.00,
               rating: 4.5,
               noOfComments: 150,
               description: "Similar to a latte but with a thicker layer of milk foam, typically around one-third of the total drink. The foam adds a delightful texture and a touch of sweetness to the coffee.",
               sizes: [.Small, .Large], image: .coffee4),
        
        
        
    ]
}
