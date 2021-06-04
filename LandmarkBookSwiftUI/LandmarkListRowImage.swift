import SwiftUI

struct LandmarkListRowImage: View {
    var landmark: LandmarkModel
    var body: some View {
        Image(landmark.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .leading)
    }
}

struct LandmarkListRowImage_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowImage(landmark: galataTowerLandmark)
    }
}
