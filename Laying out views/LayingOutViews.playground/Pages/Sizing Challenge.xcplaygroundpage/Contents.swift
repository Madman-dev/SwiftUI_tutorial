import SwiftUI

struct SizingChallengeView: View {
    var body: some View {
        VStack {
            ZStack {
                /*#-code-walkthrough(2.viewSizing)*/
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.paleOrange)
                    .frame(width: 200, height: 150)
                //#-learning-code-snippet(3.viewSizing)
                /*#-code-walkthrough(2.viewSizing)*/
                VStack {
                    Text("Roses are red,")
                    // no need to give font size individually
//                        .font(.system(size: 15, weight: .semibold))
                    Image("Rose")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 50)
                    // no need to use frame
//                        .frame(width: 50, height: 50)
                        .foregroundColor(.themeRed)
                    //#-learning-code-snippet(7.viewSizingImageFrame)
                    Text("violets are blue, ")
//                        .font(.system(size: 18, weight: .semibold))
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.paleOrange)
                    .frame(width: 200, height: 150)
                //#-learning-code-snippet(3.viewSizing)
                VStack {
                    Text("I just love")
                    // no need to give font size individually
//                        .font(.headline)
                    Image("Heart")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 50)
                    //#-learning-code-snippet(7.viewSizingImageFrame)
                        .foregroundColor(.themeRed)
                    //#-learning-code-snippet(5.viewSizing)
                    Text("coding with you!")
//                        .font(.headline)
                }
            }
        }
        // single font size for all within stack views
        .font(.headline)
        //#-learning-code-snippet(9.viewSizingFont)
        .foregroundColor(.darkBrown)
    }
}

//struct SizingChallengeView_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewSizingChallengePreview()
//    }
//}

