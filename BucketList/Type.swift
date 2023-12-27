//
//  Type.swift
//  BucketList
//
//  Created by mac on 27.12.2023.
//

import SwiftUI

extension View {
    func style(for location: Location) -> some View {
        if location.type == "Other"{
            return self.foregroundColor(Color("Color-0"))
        }
        else if item.amount<1000{
            return self.foregroundColor(Color("Color-1"))
        }
        else {
            return self.foregroundColor(Color("Color-2"))
             }
    }
}
