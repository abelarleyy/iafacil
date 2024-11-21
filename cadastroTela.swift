import SwiftUI

struct CadastroTela: View {
    @State private var email: String = ""
    @State private var senha: String = ""
    @State private var repetirSenha: String = ""
    @State private var dataNascimento: String = ""
    @State private var showProfile = false

    @Environment(\.presentationMode) var presentationMode // Para voltar

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Botão Voltar
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss() // Volta para a tela anterior
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
                .padding(.horizontal)
                .padding(.top, 10)

                // Cabeçalho
                VStack(spacing: 10) {
                    Image(systemName: "brain.head.profile")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                    
                    Text("IA Fácil")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding(.top, 20)

                // Campos de texto
                VStack(spacing: 15) {
                    TextField("usuario@email.com", text: $email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)

                    SecureField("senha", text: $senha)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)

                    SecureField("repita a senha", text: $repetirSenha)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)

                    TextField("xx/xx/xxxx - Data de nascimento", text: $dataNascimento)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)

                // Botão de cadastro
                NavigationLink(destination: ProfileView(), isActive: $showProfile) {
                    Button(action: {
                        showProfile = true;
                    }){
                        Text("Cadastrar")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 63/255, green: 193/255, blue: 201/255))
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 40)
                .padding(.top, 20)

                // Separador "OU"
                Text("OU")
                    .foregroundColor(.white)
                    .padding(.top, 10)

                // Ícones
                HStack(spacing: 20) {
                    Image(systemName: "bird.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)

                    Image(systemName: "person.2.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)

                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)

                    Image(systemName: "message.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                }
                .padding(.top, 10)

                Spacer()

                // Rodapé
                Text("Contate o suporte | IA Fácil©Todos os direitos reservados")
                    .font(.footnote)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
            }
            .background(Color.blue.ignoresSafeArea())
            .navigationBarTitle("") // Remove o título automático da barra
            .navigationBarHidden(true) // Esconde completamente a barra de navegação
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Força o estilo da navegação
    }
}

struct CadastroTela_Previews: PreviewProvider {
    static var previews: some View {
        CadastroTela()
    }
}
