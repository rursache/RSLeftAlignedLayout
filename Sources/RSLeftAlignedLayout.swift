//
//  RSLeftAlignedLayout
//  v1.0
//
//  Radu Ursache - RanduSoft
//

import UIKit

public class RSLeftAlignedLayout: UICollectionViewFlowLayout {
	private override init() {
		super.init()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("Use convenience init(scrollDirection: minimumLineSpacing: minimumLineSpacing: )")
	}
	
	convenience init(scrollDirection: UICollectionView.ScrollDirection, minimumLineSpacing: CGFloat, minimumInteritemSpacing: CGFloat) {
		self.init()
		
		common(scrollDirection: scrollDirection, minimumLineSpacing: minimumLineSpacing, minimumInteritemSpacing: minimumInteritemSpacing)
	}
	
	private func common(scrollDirection: UICollectionView.ScrollDirection = .horizontal, minimumLineSpacing: CGFloat = 10, minimumInteritemSpacing: CGFloat = 10) {
		self.scrollDirection = scrollDirection
		self.minimumLineSpacing = minimumLineSpacing
		self.minimumInteritemSpacing = minimumInteritemSpacing
	}
	
	public override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		guard let superAttributes = super.layoutAttributesForElements(in: rect), let attributes = NSArray(array: superAttributes, copyItems: true) as? [UICollectionViewLayoutAttributes] else {
			return []
		}
		
		var x: CGFloat = sectionInset.left
		var y: CGFloat = -1.0
		
		for atribute in attributes {
			if atribute.representedElementCategory != .cell {
				continue
			}
			
			if atribute.frame.origin.y >= y {
				x = sectionInset.left
			}
			
			atribute.frame.origin.x = x
			x += atribute.frame.width + minimumInteritemSpacing
			y = atribute.frame.maxY
		}
		
		return attributes
	}
}
