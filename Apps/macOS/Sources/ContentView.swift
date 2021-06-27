import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center, content: {
            Image(nsImage: Asset.MacOS.hget.image)
            Text(Strings.hello)
                .foregroundColor(Color(Asset.Colors.customGray.color))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
