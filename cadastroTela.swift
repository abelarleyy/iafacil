import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Top bar botão "Voltar"
            HStack {
                Button(action: {
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
                .padding(.top, 40)
            
            Text("IA Fácil")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            Spacer().frame(height: 30)
            
            // Email
            TextField("usuario@email.com", text: .constant(""))
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            // Senha
            SecureField("senha", text: .constant(""))
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            // Repetir Senha
            SecureField("repita a senha", text: .constant(""))
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            // Data de Nascimento
            TextField("xx/xx/xxxx - Data de nascimento", text: .constant(""))
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            // Botão Registrar
            Button(action: {
            }) {
                Text("Cadastrar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)
            .padding(.top, 20)
            
            Spacer().frame(height: 20)
            
            Text("OU")
                .font(.headline)
                .foregroundColor(.gray)
            
            Spacer().frame(height: 20)
            
            // Icones 'falta colocar as imagens localmente'
            HStack(spacing: 20) {
                ForEach(0..<4) { _ in
                    Circle()
                        .stroke(Color.gray, lineWidth: 2)
                        .frame(width: 50, height: 50)
                }
            }
            .padding(.horizontal, 40)
            
            Spacer()
            
            // Footer 'rodape' 
            Text("Contate o suporte | IA Fácil®Todos os direitos reservados")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
