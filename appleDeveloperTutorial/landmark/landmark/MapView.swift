//
//  MapView.swift
//  landmark
//
//  Created by Jack Lee on 2023/12/13.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.514575, longitude: 127.0495556),
            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.01)) // lower the value, the closer it gets.
    }
}

#Preview {
    MapView()
}
