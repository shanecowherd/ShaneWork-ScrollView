# ShaneWork-ScrollView
Make a scrollview quick!

```swift
    scrollView = ShaneWorkScrollView(frame: self.view.frame) //Make a scrollview at any frame
    self.view.addSubview(scrollView)                         //Add the scrollview as a subview
    scrollView.insertView(orange)                            //Add any UIView that you want to scroll
```
---

1. Copy `ShaneWork-ScrollView.swift` to your project.

2. In your view controller, make a property called `scrollView`

```swift
var scrollView = ShaneWorkScrollView()
```

3. In your viewDidLoad (or any function) 

```swift
override func viewDidLoad() {
  super.viewDidLoad()

  //Orange is our subview that we want to scroll
  let orange = UIView(frame: self.view.frame)
  orange.backgroundColor = UIColor(patternImage: UIImage(named: "pattern.jpg")!)

  //Create a scrollView, add it to the current view and set the view you want to scroll
  scrollView = ShaneWorkScrollView(frame: self.view.frame)
  self.view.addSubview(scrollView)
  scrollView.insertView(orange)
}
```
