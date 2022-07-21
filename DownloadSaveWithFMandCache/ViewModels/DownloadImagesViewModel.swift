//
//  DownloadImagesViewModel.swift
//  DownloadSaveWithFMandCache
//
//  Created by Skorobogatow, Christian on 21/7/22.
//

import Foundation
import Combine

class DownloadImagesViewModel: ObservableObject {
    
    @Published var dataArray: [PhotoModel] = []
    
    var cancellables = Set<AnyCancellable>()
    
    let dataService = PhotoModelDataService.instance
    
    init() {
        addSubscribers()
    }
    
    
    func addSubscribers() {
        dataService.$photoModels
            .sink { [weak self](returnedPhotoModels) in
                self?.dataArray = returnedPhotoModels
            }
            .store(in: &cancellables)
    }
}
