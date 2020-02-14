//
//  ContentView.swift
//  MapUI
//
//  Created by Павел Попов on 13.02.2020.
//  Copyright © 2020 Павел Попов. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            MainView()
                .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct MainView: View {
    var body: some View {
        Button(action: {
            print("Open the side menu")
        }) {
            Text("Show Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


