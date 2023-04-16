//
//  ContentView.swift
//  MapKitDemo
//
//  Created by Aruna Randika on 2023-02-23.
//

import SwiftUI
import MapKit
import CoreLocationUI
struct ContentView: View {
    
@StateObject private var viewModel = ContenetViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom){
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .tint(.pink)
            
            LocationButton(.currentLocation){
                viewModel.requestAllowOncePermission()
            }.foregroundColor(.white)
                .cornerRadius(8)
                .labelStyle(.titleAndIcon)
                .symbolVariant(.fill)
                .padding(.bottom, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
