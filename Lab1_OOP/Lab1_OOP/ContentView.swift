import SwiftUI

struct ContentView: View {
  @State private var work1 = false
  @State private var work2 = false
  @State var group: String = ""
  @State var text: String = ""
  @State private var rabota1_1 = true
  @State private var rabota1_2 = false
  @State private var celsius: Double = 0
    
    
    
  var body: some View {
    return VStack(content: {
      Text("Кокошко Ярослав Лаб1 ")
        .bold()
        .font(.title)
        .padding()

      HStack(content: {
        Spacer()

        Button(action: {
          self.work1.toggle()
          self.work2 = false
          self.group = ""
        }, label: {
            Text("Робота 1")
              .fontWeight(.heavy)
              .foregroundColor(.black)
              .padding()
              .background(RoundedRectangle(cornerRadius: 100)
                            .stroke(lineWidth: 4)
                            .fill(Color.black))
          })
        .position(x: 95, y: 50)

        Spacer()

        Button(action: {
          self.work2.toggle()
          self.work1 = false
          self.text = ""
        }, label: {
            Text("Робота 2")
              .fontWeight(.heavy)
              .foregroundColor(.black)
              .padding()
              .background(RoundedRectangle(cornerRadius: 100)
                            .stroke(lineWidth: 4)
                            .fill(Color.black))
          })
        .position(x: 95, y: 50)

        Spacer()
      })

      Spacer()

        if work1 {
                if rabota1_1 {
                  
                  Button(action: {
                    self.rabota1_1 = false
                    self.rabota1_2 = true
                  }, label: {
                    HStack {
                      Image(systemName: "arrowtriangle.right.square")
                        .resizable()
                        .foregroundColor(Color.black)
                        .frame(width: 18.0, height: 18.0)
                      Text("Далі")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 100)
                                  .stroke(lineWidth: 4)
                                  .fill(Color.black))
                    })
                  .position(x: 100, y: 110)
                  
                  Button(action: {
                    self.work1.toggle()
                    self.rabota1_1 = true
                    self.rabota1_2 = false
                  }, label: {
                    Text("Відміна")
                      .fontWeight(.heavy)
                      .foregroundColor(.black)
                      .padding()
                      .background(RoundedRectangle(cornerRadius: 100)
                                    .stroke(lineWidth: 4)
                                    .fill(Color.black))
                  })
                  .position(x: 300, y: -150.0)
                }
                if rabota1_2 {
                    
                    Button(action: {
                      self.rabota1_1 = true
                      self.rabota1_2 = false
                    }, label: {
                      HStack {
                        Image(systemName: "return")
                          .resizable()
                          .foregroundColor(Color.black)
                          .frame(width: 18.0, height: 18.0)
                        Text("Назад")
                          .fontWeight(.heavy)
                          .foregroundColor(.black)
                      }
                      .padding()

        .background(RoundedRectangle(cornerRadius: 100)
                                    .stroke(lineWidth: 4)
                                    .fill(Color.black))
                    })
                    .position(x: 82, y: 190)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                      Text("Так")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 100)
                                      .stroke(lineWidth: 4)
                                      .fill(Color.black))
                    })
                    .position(x: 200, y: 0)
                    
                    Button(action: {
                      self.work1.toggle()
                      self.rabota1_1 = true
                      self.rabota1_2 = false
                    }, label: {
                      Text("Відміна")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                                      .stroke(lineWidth: 4)
                                      .fill(Color.black))
                    })
                    .position(x: 319, y: -200)
                    
                }
              }

      if work2 {
                VStack {
                    Slider(value: $celsius, in: 0...100)
                    Text("\(celsius, specifier: "%.1f")")
                        .position(x: 319, y: -200)
                }
      }
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
