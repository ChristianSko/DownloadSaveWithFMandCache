//
//  ContentView.swift
//  DownloadSaveWithFMandCache
//
//  Created by Skorobogatow, Christian on 21/7/22.
//

import SwiftUI

struct DownloadImages: View {
    
    @StateObject var vm = DownloadImagesViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.dataArray) { model in
                    DownloadingImagesRow(model: model)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Downloading Images!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadImages()
    }
}
