import SwiftUI


struct DetailsView: View {
    var chosenLandmark: LandmarkModel
    //var image: Image
    var body: some View {
        VStack{
            MapView(coordinate: chosenLandmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
            CircleImageView(image: Image(chosenLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.25)
                .offset(x: 0, y: (UIScreen.main.bounds.height * -0.08))
                .padding(.bottom, (UIScreen.main.bounds.height * -0.08))
            VStack(alignment: .leading){
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                HStack{
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    Spacer()
                    Text(chosenLandmark.category)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(chosenLandmark.name))
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenLandmark: galataTowerLandmark)
    }
}
