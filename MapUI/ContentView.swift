//
//  ContentView.swift
//  MapUI
//
//  Created by Павел Попов on 13.02.2020.
//  Copyright © 2020 Павел Попов. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
                        .onEnded{
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
        }
        
        return HStack {
            NavigationView {
                GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                    
                    if self.showMenu {
                        MenuView()
                        .frame(width: geometry.size.width/2)
                        .transition(.move(edge: .leading))
                        }
                }
                    .gesture(drag)
            }
                    .navigationBarTitle("Side Menu", displayMode: .inline)
                    .navigationBarItems(leading: (
                        Button(action: {
                            withAnimation {
                                self.showMenu.toggle()
                            }
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                        }
                    ))
            }
        }
    }
}

struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage().offset(y: -50).padding(.bottom, -100)
            VStack(alignment: .leading) {
                    Text("Hamburger Studio").font(.largeTitle).foregroundColor(Color.red)
                        .frame(minWidth: 0,  maxWidth: .infinity,  alignment: .center)
                HStack {
                    Text("Software company")
                    Spacer()
                    Text("Moscow")
                }
        }
            .padding(55)
            Spacer()
        }
        
    /*
        Button(action: {
            withAnimation {
                self.showMenu = true
                
            }
        }) {
            Text("Show Menu btn")
        }
    */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


