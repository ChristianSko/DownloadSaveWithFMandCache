//
//  PhotoModel.swift
//  DownloadSaveWithFMandCache
//
//  Created by Skorobogatow, Christian on 21/7/22.
//

import Foundation


struct PhotoModel: Identifiable, Codable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}

