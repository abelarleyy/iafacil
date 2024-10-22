import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            // Botão "Voltar" 
            HStack {
                Button(action: {
                    // Ação do botão "Voltar"
                }) {
                    Text("Voltar")
                        .foregroundColor(.blue)
                        .padding()
                        .frame(width: 80, height: 40)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                }
                Spacer() 
            }
            .padding(.leading)
            
            // Logo 
            Circle()
                .stroke(Color.blue, lineWidth: 2)
                .frame(width: 80, height: 80)
                .padding(.top, 20)
            
            Text("IA Fácil")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Spacer().frame(height: 30)
            
            // Email 
            TextField("usuario@email.com", text: $email)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)

            // Senha
            SecureField("senha", text: $password)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)

            // Entrar Button
            Button(action: {
                // Ação ao clicar no botão "Entrar"
            }) {
                Text("Entrar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 63/255, green: 193/255, blue: 201/255))
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)
            .padding(.top, 20)

            // Links
            HStack {
                Button(action: {
                    // Ação ao clicar em "Esqueci a senha"
                }) {
                    Text("Esqueci a senha")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                
                Text("-")
                    .foregroundColor(.white)
                
                Button(action: {
                    // Ação ao clicar em "Dúvidas sobre"
                }) {
                    Text("Dúvidas sobre")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 10)
            
            Text("OU")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.top, 10)

            // Icones
            HStack(spacing: 20) {
                ForEach(0..<4) { _ in
                    Circle()
                        .stroke(Color.white, lineWidth: 2)
                        .frame(width: 50, height: 50)
                }
            }
            .padding(.top, 10)
            
            Spacer().frame(height: 30)
            
            // Cadastrar Section
            VStack(spacing: 10) {
                Text("Não tem conta?")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Button(action: {
                    // Ação ao clicar no botão "Cadastrar"
                }) {
                    Text("Cadastrar")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 63/255, green: 193/255, blue: 201/255))
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
            }
            
            Spacer()

            // Footer 
            Text("Contate o suporte | IA Fácil®Todos os direitos reservados")
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.bottom, 20)
        }
        .background(Color.blue.ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
