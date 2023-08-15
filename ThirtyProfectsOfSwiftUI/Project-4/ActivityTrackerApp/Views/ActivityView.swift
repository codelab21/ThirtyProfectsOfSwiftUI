//
//  ActivityView.swift
//  ThirtyProfectsOfSwiftUI
//
//  MARK: codelab21 follow me on Instagram and YouTube
//

import SwiftUI

struct ActivityView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        GeometryReader{ geometry in
            Color.black.edgesIgnoringSafeArea(.all)
            
                VStack {
                    Spacer(minLength: Constants.navigationBarHeight)
                        .frame(width: geometry.size.width, height: Constants.navigationBarHeight,  alignment: .center)
                    newRings()
                    HStack {
                        Text("Follow for more")
                            .font(.headline)
                            .foregroundColor(.white.opacity(0.5))
                        Text("@codelab21")
                            .font(.headline)
                            .bold()
                            .foregroundColor(.white)
                    }
                    .padding(.vertical, 50)

                }
                .frame(height: geometry.size.height)
            createNavigationBar(geometry.size)
        }
        .navigationBarBackButtonHidden(true) // Hide the back button
        .navigationBarHidden(true)
    }
    func newRings() -> some View {
        ZStack {
            RingView(
                percentage: ActivityData.ringsPercentage.standPercentage,
                backgroundColor: Color.standRingBackground,
                startColor: Color.standRingStartColor,
                endColor: Color.standRingEndColor,
                thickness: Constants.mainRingThickness
            )
                .frame(width: 150, height: 150)
                .aspectRatio(contentMode: .fit)
            RingView(
                percentage: ActivityData.ringsPercentage.exercisePercentage,
                backgroundColor: Color.exerciseRingBackground,
                startColor: Color.exerciseRingStartColor,
                endColor: Color.exerciseRingEndColor,
                thickness: Constants.mainRingThickness
            )
                .frame(width: 215, height: 215)
                .aspectRatio(contentMode: .fit)
            RingView(
                percentage: ActivityData.ringsPercentage.movePercentage,
                backgroundColor: Color.moveRingBackground,
                startColor: Color.moveRingStartColor,
                endColor: Color.moveRingEndColor,
                thickness: Constants.mainRingThickness
            )
                .frame(width: 280, height: 280)
                .aspectRatio(contentMode: .fit)
        }
    }
    
    func createNavigationBar(_ geometrySize: CGSize) -> some View {
        ZStack(alignment: .top) {
            BlurView(style: .dark).edgesIgnoringSafeArea(.top)
            VStack {
                HStack {
                    ForEach(0..<ActivityData.weekdays.count) { item in
                        VStack(spacing: 5) {
                            Text("\(ActivityData.weekdays[item].firstLetter)")
                                .font(Font.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(Color.white)
                            ZStack {
                                RingView(
                                    percentage: ActivityData.weekdays[item].standPercentage,
                                    backgroundColor: Color.standRingWeekdayBackground,
                                    startColor: Color.standRingStartColor,
                                    endColor: Color.standRingEndColor,
                                    thickness: Constants.weekdayRingThickness
                                )
                                    .frame(width: 20, height: 20)
                                    .aspectRatio(contentMode: .fit)
                                RingView(
                                    percentage: ActivityData.weekdays[item].exercisePercentage,
                                    backgroundColor: Color.exerciseRingWeekdayBackground,
                                    startColor: Color.exerciseRingStartColor,
                                    endColor: Color.exerciseRingEndColor,
                                    thickness: Constants.weekdayRingThickness
                                )
                                    .frame(width: 30, height: 30)
                                    .aspectRatio(contentMode: .fit)
                                RingView(
                                    percentage: ActivityData.weekdays[item].movePercentage,
                                    backgroundColor: Color.moveRingWeekdayBackground,
                                    startColor: Color.moveRingStartColor,
                                    endColor: Color.moveRingEndColor,
                                    thickness: Constants.weekdayRingThickness
                                )
                                    .frame(width: 40, height: 40)
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                }
            }
        }
        .frame(width: geometrySize.width, height: Constants.navigationBarHeight, alignment: .top)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
