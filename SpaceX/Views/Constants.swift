//
//  Constants.swift
//  SpaceX
//
//  Created by anita on 29.08.2022.
//

import UIKit

struct InsetConstants {
    static let leftDistanceToView: CGFloat = 32
    static let rightDistanceToView: CGFloat = 32
    static let galleryMinimumLineSpacing: CGFloat = 12
    static let galleryItemWidth = (UIScreen.main.bounds.width - InsetConstants.leftDistanceToView - InsetConstants.rightDistanceToView - (InsetConstants.galleryMinimumLineSpacing / 2)) / 3
}
