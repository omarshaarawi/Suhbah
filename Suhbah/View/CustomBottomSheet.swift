import SwiftUI

struct CustomBottomSheet: View {
    @State private var showSheet = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("wallpaper")
                .resizable()
                .scaledToFill()
                .clipped()
                .ignoresSafeArea()
            
            Button("Show Bottom Sheet") {
                showSheet.toggle()
            }
            .tint(.black)
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                Text("This is the expandable bottom sheet.")
                    .presentationDetents([ .medium, .large, .height(70)])
                    .presentationBackground(.thinMaterial)
                    .presentationDragIndicator(.visible)
                    .interactiveDismissDisabled(true)
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBottomSheet()
    }
}
