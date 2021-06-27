import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center, content: {
            Image(nsImage: BigvalutMacosAsset.MacOS.hget.image)
            Text(BigvalutMacosStrings.Localizable.hello)
                .foregroundColor(Color(BigvalutMacosAsset.Colors.customGray.color))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
