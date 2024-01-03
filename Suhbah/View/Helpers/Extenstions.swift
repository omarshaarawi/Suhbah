//
//  Extenstions.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/9/23.
//

import SwiftUI


extension View{
    @ViewBuilder
    func bottomSheet<Content: View> (
        presentationDetents: Set<PresentationDetent>, isPresented: Binding<Bool>,
        dragVisibility: Visibility = .visible,
        sheetCornerRadius: CGFloat?,
        largestUndimmedIdentifier: UISheetPresentationController.Detent.Identifier = .large,
        isTransparentBG: Bool = false,
        interactiveDisabled: Bool = true,
        @ViewBuilder content: @escaping () ->Content,
        onDismiss: @escaping ()-> ()
    ) ->some View {
        self
            .sheet (isPresented: isPresented) {
                onDismiss ()
                
            } content: {
                content()
                    .presentationDetents (presentationDetents)
                    .presentationDragIndicator (dragVisibility)
                    .interactiveDismissDisabled(interactiveDisabled)
                .presentationBackgroundInteraction(.enabled)
                    .onAppear {
                        guard let windows = UIApplication.shared.connectedScenes.first as?
                                UIWindowScene else{
                            return
                        }
                        
                        if let controller = windows .windows.first?.rootViewController?.presentedViewController, let sheet = controller.presentationController as?
                            UISheetPresentationController {
                            
                            controller.presentingViewController?.view.tintAdjustmentMode = .normal
                            sheet.largestUndimmedDetentIdentifier = largestUndimmedIdentifier
                            sheet.preferredCornerRadius = sheetCornerRadius
                            
                        } else {
                            print ("NO CONTROLLER FOUND" )
                        }
                    }
                        
            }
    }
}
