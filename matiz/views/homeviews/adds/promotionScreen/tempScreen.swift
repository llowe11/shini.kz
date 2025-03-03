import SwiftUI

struct tempScreen: View {
    @Environment(\.dismiss) var dismiss
    @State private var timer: Timer?

    var body: some View {
        ZStack {
            Color.black.opacity(0.5).ignoresSafeArea()

            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    .padding()
                }

                Spacer()

                Text("Story")
                    .foregroundColor(.white)
                    .font(.title)

                Spacer()
            }
        }
        .onAppear {
            timer = Timer.scheduledTimer(withTimeInterval: 7, repeats: false) { _ in
                dismiss()
            }
        }
        .onDisappear {
            timer?.invalidate()
        }
    }
}
