# DequeuableRegistrable

[![CI Status](http://img.shields.io/travis/Fernando Ortiz/DequeuableRegistrable.svg?style=flat)](https://travis-ci.org/Fernando Ortiz/DequeuableRegistrable)
[![Version](https://img.shields.io/cocoapods/v/DequeuableRegistrable.svg?style=flat)](http://cocoapods.org/pods/DequeuableRegistrable)
[![License](https://img.shields.io/cocoapods/l/DequeuableRegistrable.svg?style=flat)](http://cocoapods.org/pods/DequeuableRegistrable)
[![Platform](https://img.shields.io/cocoapods/p/DequeuableRegistrable.svg?style=flat)](http://cocoapods.org/pods/DequeuableRegistrable)

## Introduction

DequeuableRegistrable is a simple set of protocol extensions that allow registering and dequeuing cells and footers/headers (either from UITableView or UICollectionView) without using unsafe strings or explicit casting.



## Example Project

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

* iOS 9.0 or higher
* Swift 3.0 or higher

## Installation

DequeuableRegistrable is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DequeuableRegistrable", :git => "https://github.com/fmo91/DequeuableRegistrable/"
```

## At a glance

DequeuableRegistrable turns registering from this:

```swift
tableView.register(UINib(nibName: "DogCell", bundle: nil), forCellReuseIdentifier: "DogCell")
```

to this

```swift
DogCell.register(in: tableView)
```

and turns dequeuing from this:

```swift
let cell = tableView.dequeueReusableCell(withIdentifier: "DogCell") as! DogCell
```

to this:

```swift
let cell = DogCell.dequeue(from: tableView) 
// cell is DogCell, not UITableViewCell. It's already casted.
```

at the only cost of doing this:

```swift
extension DogCell: Registrable, Dequeuable {}
```

## Usage

DequeuableRegistrable consists in three simple protocols:

1. `Identifiable`: It allows to identify any kind of object by providing a key string. In case of cells, that string is the reusable identifier.
2. `Dequeuable`: Inherits from Identifiable. It allows to dequeue cells from UICollectionView or UITableView using the reusable identifier provided by Identifiable protocol.
3. `Registrable`: Inherits from Identifiable. It allows to register cells in UICollectionView or UITableView using the reusable identifier provided by Identifiable protocol, and a nib object that Registrable protocol requires.

All of these protocols have extensions that returns defaults values that match the class name. So, for example, if you have a `ABCCell` class, then its default reusable identifier would be `"ABCCell"`, and its `UINib` would be `UINib(nibName: "ABCCell")`

## Author

Fernando Ortiz, ortizfernandomartin@gmail.com

## License

DequeuableRegistrable is available under the MIT license. See the LICENSE file for more info.
