import SwiftUI

struct PlanosPremiumView: View {
    var body: some View {
        VStack {
            // Top Navigation with "Voltar" Button
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
                Spacer() // Para alinhar o botão à esquerda
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
            
            Spacer().frame(height: 20)
            
            // Título da Tela
            Text("Planos Premium")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("Considere se tornar um apoiador!")
                .foregroundColor(.white)
                .padding(.bottom, 20)
            
            // Plano Simples
            VStack(alignment: .leading, spacing: 10) {
                Text("Plano Simples")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text("• Sem Propagandas\n• Ícone de apoiador")
                    .foregroundColor(.white)
                
                Text("R$ 9,99 /mês")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(red: 140/255, green: 225/255, blue: 220/255))
            .cornerRadius(10)
            .padding(.horizontal, 20)
            
            // Plano IA'stico
            VStack(alignment: .leading, spacing: 10) {
                Text("Plano IA'stico!")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text("• Sem Propagandas\n• Ícone de apoiador\n• Papéis de parede personalizados")
                    .foregroundColor(.white)
                
                Text("R$ 24,99/3 meses\n22% de desconto")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.horizontal, 20)
            
            // Inteligência Natural
            VStack(alignment: .leading, spacing: 10) {
                Text("Inteligência Natural")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text("• Prompts detalhados\n• Sem Propaganda\n• Ícone de apoiador\n• Papéis de parede personalizados")
                    .foregroundColor(.white)
                
                Text("R$ 49,99/6 meses\n20% de desconto")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(red: 255/255, green: 99/255, blue: 71/255))
            .cornerRadius(10)
            .padding(.horizontal, 20)
            
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

struct PlanosPremiumView_Previews: PreviewProvider {
    static var previews: some View {
        PlanosPremiumView()
    }
}
