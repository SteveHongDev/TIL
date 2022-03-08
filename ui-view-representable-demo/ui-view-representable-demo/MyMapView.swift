//
//  MyMapView.swift
//  ui-view-representable-demo
//
//  Created by 홍성범 on 2022/03/08.
//

import SwiftUI
import MapKit
import WebKit

struct MyMapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        
        let mapView = MKMapView()
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        
    }
}

struct MyMapView_Previews: PreviewProvider {
    static var previews: some View {
        MyMapView()
    }
}
