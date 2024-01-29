
import SwiftUI

struct SleepViewHalf: View {
    @Binding var value: Double
    var isEditing: Bool
    var fontStyle: JournalFont

    var body: some View {
        VStack {
            Text(isEditing ? "How many hours did you sleep?" : "Hours Slept")
                .foregroundColor(.darkBrown)
                .font(fontStyle.uiFont(15))
                .frame(maxWidth: .infinity, alignment: isEditing ? .leading : .center)
            Spacer()
            Text("\(Int(value))")
                .modifier(FontStyle(size: 50))
            Spacer()
            if isEditing {
                Stepper("잠잔 시간", value: $value, in: 0...12, step: 1).labelsHidden()
            }
        }
        // allows scaling and adjusting to different screen sizes!
        .frame(minHeight: 100, maxHeight: 200)
        .padding()
    }
}

struct SleepViewHalf_Previews : PreviewProvider {
    static var previews: some View {
        SleepViewHalfPreview()
    }
}
