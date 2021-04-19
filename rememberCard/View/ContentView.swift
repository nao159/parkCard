//
//  ContentView.swift
//  rememberCard
//
//  Created by Максим Нуждин on 17.04.2021.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
       
        LandMarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
