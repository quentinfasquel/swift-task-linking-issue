//
//  BaseViewCell.swift
//  MyPackage
//
//  Created by Quentin Fasquel on 16/09/2022.
//

import UIKit

open class BaseViewCell: UICollectionViewCell {
    let imageView = UIImageView()

    ///
    /// There's a linking issue when archiving a project where BaseViewCell is subclassed.
    /// The issue seems to only be fixed by setting this method `public`.
    ///
    private func fetchImage(_ imageURL: URL) async -> UIImage? {
        return nil
    }

    open func configure(with imageURL: URL) {
        Task {
            // Linker cannot find an internal/private method when in Release configuration
            let image = await self.fetchImage(imageURL)
            self.imageView.image = image
        }
    }
}
