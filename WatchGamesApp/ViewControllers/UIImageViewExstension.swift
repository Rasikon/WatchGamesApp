//
//  UIImageViewExstension.swift
//  WatchGamesApp
//
//  Created by Rasikon on 01.02.2021.
//

import Foundation
import Kingfisher

extension UIImageView {
    func setImage(imageUrl: String) {
        let processor = ResizingImageProcessor(referenceSize: self.frame.size).append(another: RoundCornerImageProcessor(cornerRadius: 25))
        self.kf.indicatorType = .activity
        self.kf.setImage(with: URL(string: imageUrl), options: [.processor(processor), .cacheOriginalImage])
    }
}
