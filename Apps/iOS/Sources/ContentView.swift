import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center, content: {
            Image(uiImage: BigvalutIosAsset.Ios.orca.image).resizable().frame(width: 50, height: 50, alignment: .center)
            Text(BigvalutIosStrings.Localizable.hello)
                .foregroundColor(Color(BigvalutIosAsset.Colors.customGray.color))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
