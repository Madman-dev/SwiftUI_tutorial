# Swift UI Container Views

SwiftUI에는 다양한 container view가 존재한다.
기본적으로 화면을 구성하는데 사용을 하는데 이들을 V, H, Z stack이라고 부른다.
(some containers purely for structure and layout, like stack views, lazy stack views and grid views.)

List, forms 등 다른 view들은 사용자와 소통(exchange information)을 이루기 위해 사용한다고 한다.

//MARK: - Grouping view collections
스택 뷰는 Swift UI에 있어 가장 기초적인 container가 된다.
stack view를 horizontal, vertical로 두어 뷰들을 묶거나 쌓아 올릴 수 있다.

HStack은 Horizontal, VStack은 Vertical, ZStack은 쌓아 올리기 위해 사용하면 된다!
*별개로 LazyHStack, LazyVStack 등도 있다.*

stack view는 화면을 그리는데 빠르고 명확하다고 하는데, child view들을 한번에 로드하기에 화면의 규격을 알고 있는 이상, 문제가 발생할 상황이 적다.
반대로 lazy stack은 퍼포먼스를 높이는 대신 레이아웃 정확도가 떨어지는데, 담고 있는 child view들이 완전히 생성되기 전까지는 화면 위치나 규격을 잡지 않기 때문.

// Picking container views for your content


// MARK: - View Sizing
diffent views have different space requirement
*VStack, HStack 등도 intrinsic size를 가지고 있는건가?*

```swift
struct ViewSizing: View {

    var body: some View {
        HStack {
            // Rectangle()*
            VStack {
                Image(systemName: "ladybug")
                Text("I'm Squished")
            }
            Rectangle()
        }
    }
}
```
ladybug 이미지와 Text는 필요한 만큼만 크기를 잡고 나머지는 Rectangle이 차지하게 된다.
각 뷰마다 space requirement가 있다는 점이 어떤 점인지 이해된다!
**Rectangle()를 놓아도 image, text의 크기는 변하지 않는다. 새로운 Rectangle이 감싸게 되는데, view가 변하지 않는다는 점이 특징*
 
 - Shape이 있는 view들은 빈 공간을 차지하려고 한다
 - text와 이미지 등은 content 사이즈를 변경한다
 - 사이즈가 변하지 않는 stepper도 있다

 .frame(width: height: alignment:)로 view에 원하는 규격 제공 가능
 