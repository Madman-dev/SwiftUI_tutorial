
import SwiftUI

struct ModifyShapes: View {
    var body: some View {
        VStack {
            Capsule()
//                .stroke(.green, lineWidth: 10)
            // when using stroke, the edge of the outline can be clipped from the screen. The strokes are centered directly on the center of the shape's outline - which could lead to the clipping.

            // use shapes that conform to InsettableShape - which creates strokes inside the shape.
                .strokeBorder(.green, lineWidth: 10)
            
            Ellipse()
                .strokeBorder(.red, style: StrokeStyle(lineWidth: 10, miterLimit: 10, dash: [20, 5], dashPhase: 5))
            // the shape's color changes
            Circle()
                .foregroundColor(Color(red: 1.0, green: 0, blue: 1.0))
            // the shape's color changes #2
            Circle()
                .fill(.indigo)
            // only the background - excluding the color of shape
            Circle()
                .background(.indigo)
            // Shapes are only able to have either a stroke or a background color. - SINGLE SHAPE
            Capsule()
                .strokeBorder(.indigo, lineWidth: 10)
                .background(Capsule().fill(.pink))
        }
    }
}

struct ModifyShapes_Previews: PreviewProvider {
    static var previews: some View {
       ModifyShapes()
    }
}


