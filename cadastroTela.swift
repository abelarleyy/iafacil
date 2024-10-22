import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    @State private var birthDate: Date = Date()
    @State private var showDatePicker: Bool = false

    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Top Navigation with "Voltar" Button
                HStack {
                    Button(action: {
                        // Ação do botão "Voltar"
                    }) {
                        Text("Voltar")
                            .foregroundColor(.blue)
                            .padding()
                    }
                    Spacer() // Para empurrar o conteúdo para a esquerda
                }
                .padding(.leading)

                // Logo Placeholder
                Circle()
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 80, height: 80)
                    .padding(.top, 20)

                Text("IA Fácil")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Spacer().frame(height: 30)
                
                // Aqui é a parte de baixo com os campos
                VStack(spacing: 20) {
                    TextField("usuario@email.com", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(height: 50) // Altura
                        .padding(.horizontal, 50) // Largura

                    SecureField("Senha", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(height: 50) // Altura
                        .padding(.horizontal, 50) // Largura

                    SecureField("Repita a Senha", text: $repeatPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(height: 50) // Altura
                        .padding(.horizontal, 50) // Largura

                    Button(action: {
                        withAnimation {
                            showDatePicker.toggle()
                        }
                    }) {
                        Text("Data de Nascimento")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 50)

                    if showDatePicker {
                        DatePicker("Data de Nascimento", selection: $birthDate, displayedComponents: .date)
                            .datePickerStyle(GraphicalDatePickerStyle())
                            .padding(.horizontal, 50)
                            .transition(.slide)
                    }

                    Button(action: {
                        // Ação ao clicar no botão Cadastrar
                    }) {
                        Text("Cadastrar")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(red: 63/255, green: 193/255, blue: 201/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5) // Sombra
                    }
                    .padding(.horizontal, 50)

                    Text("OU")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical)

                    // Placeholder for social icons
                    HStack(spacing: 15) {
                        ForEach(0..<4) { _ in
                            Circle()
                                .fill(Color.gray)
                                .frame(width: 50, height: 50)
                        }
                    }
                    .padding(.top)

                    Text("Contate o suporte | IA FACIL©todos os direito reservados")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding(.bottom, 20) // Adicionei espaçamento inferior
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .background(Color.blue.ignoresSafeArea())
            }
        }
    }
}

#Preview {
    ContentView()
}
