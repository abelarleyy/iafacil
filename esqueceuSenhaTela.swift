import SwiftUI

struct EsqueceuSenhaView: View {
    @State private var emailOrPhone: String = ""

    var body: some View {
        VStack {
            // "Voltar" Botão
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
            
            // "Esqueceu a senha?"
            Text("Esqueceu a senha?")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 20)
            
            // Email 
            TextField("insira email/telefone", text: $emailOrPhone)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 40)
            
            // Botão "Enviar código"
            Button(action: {
                // Ação ao clicar no botão "Enviar código"
            }) {
                Text("Enviar código")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 63/255, green: 193/255, blue: 201/255))
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)
            .padding(.top, 20)
            
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

struct EsqueceuSenhaView_Previews: PreviewProvider {
    static var previews: some View {
        EsqueceuSenhaView()
    }
}
