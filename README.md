# RSLeftAlignedLayout
Left aligned collection view layout for iOS 9+ (tested up to 15.0)

## Install
Use SPM and add `https://github.com/rursache/RSLeftAlignedLayout.git`

## Usage
- Create your `UICollectionView` from storyboards or code
- Import `RSLeftAlignedLayout`

```swift
let leftAlignedLayout = LeftAlignedLayout(scrollDirection: .horizontal, minimumLineSpacing: 16, minimumInteritemSpacing: 16)
collectionView.setCollectionViewLayout(leftAlignedLayout, animated: true)
```
