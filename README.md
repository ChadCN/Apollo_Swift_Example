# Apollo_Swift_Example

This is a simple example about how to use Apollo in Swift/RxSwift.
RxExtension inside Demo is from [RxApollo](https://github.com/scottrhoyt/RxApollo/blob/master/README.md).

## How to run the demo

1. Pods are ignored, run pod install before compile
```swift 
$cd [address of this project]
$pod install
```

2. This demo is using github API, replace token inside `AppDelegate.swift` with your own one.
```swift 
  // Where to get your own github token
  github -> settings ->  developer settings -> personal access tokens
```

## How to use GraphQL
check out [GraphQL Documents](https://graphql.github.io/learn/schema/) for Schemas Grammars

## How To Install Apollo
check out [Apollo Installation](https://www.apollographql.com/docs/ios/installation.html)  for install steps.

There may have error about npm apollo version. If yes:
```swift 
// x.x.x is the version shows in error that it want you to install
npm install -g apollo@x.x.x
```

