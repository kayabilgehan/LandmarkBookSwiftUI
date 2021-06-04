import SwiftUI

struct CircleImageView: View {
    
    var image: Image
    
    var body: some View {
        VStack{
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .shadow(radius: 10)
        }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("galata_tower"))
    }
}
