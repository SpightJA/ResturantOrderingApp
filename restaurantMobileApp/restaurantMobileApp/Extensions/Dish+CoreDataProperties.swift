//
//  Dish+CoreDataProperties.swift
//  RestaurantMobileApp
//
//  Created by Jon Spight on 1/31/24.
//
//

import Foundation
import CoreData


extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }
    @NSManaged public var descrip: String?
    @NSManaged public var title: String?
    @NSManaged public var image: String?
    @NSManaged public var price: String?
    @NSManaged public var category: String?


}

extension Dish : Identifiable {

}
