//
//  Karma+CoreDataProperties.swift
//  KarmaСounter
//
//  Created by Виталий Оранский on 24.03.2021.
//
//

import Foundation
import CoreData


extension Karma {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Karma> {
        return NSFetchRequest<Karma>(entityName: "Karma")
    }

    @NSManaged public var count: Int16
    @NSManaged public var name: String?

}

extension Karma : Identifiable {

}
