import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.white

    func changeColor() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)

        return Color(red: red, green: green, blue: blue).opacity(0.5)
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("RuoHan Chen")
                .font(.title)
                .bold()
            
            Text("Vanderbilt University")
                .font(.headline)
            
            Text("Entrepreneur")
                .font(.subheadline)

            Button(action: {
                backgroundColor = changeColor()
            }) {
                Text("Change Background Color")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
