import SwiftUI

/*
 To create and use alignment
 1. use alignment given inside stacks > HStack(alignment: .leading)
 2. add frame modifiers with the alignment parameter > .frame(alignment: maxWidth: .infinity, alignment: .trailing)
 3. use spacers to push the views to forcefully lead them in a place > Spacer()
 
* Spacer와 frame Alignment는 동일한 역할을 해낼 수 있다. 단 Spacer의 경우, 빈 공간을 채우는 용도로 사용이 되는 점 (It's just an empty view)
 */

import SwiftUI


struct AmazingAlignment: View {
    var body: some View {
        /*
         alignment allows subviews to position leading edge, default is to center the alignment
         ㄴ ZStack이 쌓을 수 있던게 아닌가? ZStack 안에 VStack을 두 개 담았을 때 쌓이지 않는 이유가 뭐지?
         */
        
        // HStack은 top, bottom - VStack은 Leading, Trailing
        // HStack (alignment: .top) {
        VStack (alignment: .leading) {
            /*#-code-walkthrough(5.alignmentIntro)*/
            Image(systemName: "books.vertical.fill")
                .font(.system(size: 40))
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 10)
            
            // #1 Method to add a shelf
            VStack () { // *alignment removed
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                
                    // *another way to give alignment to stackview, no need to directly provide VStack the alignment
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .foregroundColor(.red)
                    .background(Color.yellow)
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 10)
                
                // VStack에 있는 view에 테스트
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Rectangle()
                    .frame(maxHeight: 10)
            }
            
            // #2 Method to add a shelf
            //#-learning-code-snippet(5.VStackAlignment)
            //#-learning-code-snippet(5.frameAlignment)
            /*#-code-walkthrough(5.SpacerAlignmentExplain)*/
            /*#-code-walkthrough(5.stackSpacing)*/
            HStack(spacing: 20) { // 'spacing' to give spaces in between contents within the Stack.
                // a spacer to push-position image as trailing
                /*#-code-walkthrough(5.stackSpacing)*/
                Spacer()
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                // .padding(.trailing, 20) > padding to give space to trailing Image 
//                Spacer() > positioning Spacer here pushes images as leading
                //#-learning-code-snippet(5.addBook)
            }
            .background(Color.mint)
            /*#-code-walkthrough(5.SpacerAlignmentExplain)*/
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 10)
        }
        .padding(.horizontal)
        
        // give a specific width if necessary - NOT Padding
        .frame(width: 250)
        .border(Color.black)
        
    }
}

struct AmazingAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AmazingAlignment()
    }
}


