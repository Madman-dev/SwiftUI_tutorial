import SwiftUI

struct ViewSizing: View {

    var body: some View {
        HStack {
            Rectangle()
            /*#-code-walkthrough(3.viewSizing)*/
            VStack {
                Image(systemName: "ladybug")
                    .resizable()
                     .frame(maxWidth: 50)
                // 명확한 규격을 주어도 view는 frame이 잡혀도 이미지 자체는 늘어난 모습으로 보여진다
                    .scaledToFit()
                
                // 이미지 이후에 frame modifier를 호출하면 오류가 발생 - 새로운 view를 만드는데 image가 아니기에 문제 
//                    .resizable()
                Text("I'm Squished")
            }
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 100, height: 200)
            /*#-code-walkthrough(3.viewSizing)*/
            //#-learning-code-snippet(2.viewSizing)
        }
    }
}

struct ViewSizing_Previews : PreviewProvider {
    static var previews: some View {
            ViewSizing()
    }
}

