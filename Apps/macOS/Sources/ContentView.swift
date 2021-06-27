import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center, content: {
            Image(nsImage: BigvalutMacosAsset.MacOS.hget.image)
            Text(BigvalutMacosStrings.Localizable.hello)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
