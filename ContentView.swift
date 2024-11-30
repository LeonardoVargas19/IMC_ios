
import SwiftUI

struct Exercise1: View {
    var body: some View {
        
        VStack {
            
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 130,height: 130)
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 130,height: 130)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 130,height: 130)
            }
            Rectangle()
                .frame(width: 402, height: 100)
                .foregroundColor(.orange)
            HStack{
                Circle()
                    .frame(width: 130)
                    .foregroundColor(.black)
                Rectangle()
                    .frame(width: 80,height: 200)
                    .foregroundColor(.cyan)
                Circle()
                    .frame(width: 130)
                    .foregroundColor(.indigo)
            }
            Rectangle()
                .frame(width: 402, height: 100)
                .foregroundColor(.brown)
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 130,height: 130)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 130,height: 130)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 130,height: 130)
            }
            
            
        }
        .padding()
        .background(Color.red)
      
        
    }
}


#Preview {
    Exercise1()
}

