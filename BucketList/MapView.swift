//
//  MapView.swift
//  BucketList
//
//  Created by mac on 27.12.2023.
//

import SwiftUI
import MapKit
struct MapView: View {
    let location: Location!
    var body: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), showsUserLocation: false, userTrackingMode: nil, annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinate) {
                VStack {
                   Image(systemName: "location")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 35, height: 35)

                    Text(location.name)   
                        .font(.system(size: 12, weight: .semibold))
                        .fixedSize()
                }
            }
        }

            
    }
}
