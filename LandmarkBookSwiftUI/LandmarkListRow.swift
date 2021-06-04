//
//  LandmarkListROw.swift
//  LandmarkBookSwiftUI
//
//  Created by Bilgehan KAYA on 4.06.2021.
//

import SwiftUI

struct LandmarkListRow: View {
    
    var landmark : LandmarkModel
    
    var body: some View {
        HStack{
            LandmarkListRowImage(landmark: landmark)
            Text(landmark.name)
        }
    }
}

struct LandmarkListROw_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRow(landmark: galataTowerLandmark)
    }
}
