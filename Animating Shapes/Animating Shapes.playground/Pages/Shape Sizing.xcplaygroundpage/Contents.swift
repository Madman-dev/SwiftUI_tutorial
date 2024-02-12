// Giving size to shapes
/* 
 In SwiftUI, borders of a view changes according to the given view.
 Therefore, a shape would take up the entire view unless given a strict frame modification.
 */

import SwiftUI

struct ShapeSizingView: View {
    var body: some View {
        VStack(spacing: 40){
            Ellipse()
            .border(.blue)
//            .frame(width:200, height: 100)
            .frame(maxWidth: 400, maxHeight: 300)
            Circle()
                .border(.green)
                .frame(maxWidth: 400, maxHeight: 300)
        }
    }
}
struct ShapeSizingView_Previews: PreviewProvider {
    static var previews: some View {
       ShapeSizingView()
    }
}

