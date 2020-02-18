//
//  CircleImage.swift
//  MapUI
//
//  Created by Павел Попов on 17.02.2020.
//  Copyright © 2020 Павел Попов. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("logo").clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
