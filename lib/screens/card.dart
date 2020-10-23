import 'package:flutter/material.dart';
import 'package:flutter_credit_card_detector/flutter_credit_card_detector.dart';
import '../sidebar/navi_bloc.dart';

class AddCard extends StatelessWidget with NavigationStates {
  @override
    Widget build(BuildContext context) {
      return MultiProvider(
        providers: [
          Provider<Controller>(
            create: (_) => Controller(),
            dispose: (_, controler) => controler.dispose(),
          )
        ],
        child: Scaffold(
            appBar: AppBar(
              title: Text('Incluir Cartão'),
              backgroundColor: Colors.orange,
            ),
            body: CreditCardWidget(onTap: _onTap,
        labelTextNum: 'Numero do cartão', // Texto exibido no textField
        labelTextName: 'Nome no cartão', // Texto exibido no textField
        labelTextExpData: 'MM/YY', // Texto exibido no textField
        labelTextCVV: 'CVV/CVC', // Texto exibido no textField
        labelTextCPF: 'CPF do Titular', // Texto exibido no textField
        labelTextButton: 'Salvar', // Texto do button
        titleCreditCard: 'Cartão de Crédito', // Título do cartão
        labelTextValidate: 'Validade', // Texto de validade do cartão
        textRequired: 'Campo é obrigatorio', // Mensagem de erro no textField - campos vazios
        textSelectBand: 'Selecione a bandeira', // Mensagem de erro no textField - quando a bandeira não é identificada
        textNameMin: 'O nome de conter pelo menos 6 caracteres', // Mensagem de erro no textField - campo nome
        textIntroNameValid: 'Insira um nome válido', // Mensagem de erro no textField - campo nome
        textCardExpired: 'Cartão vencido', // Mensagem de erro no textField - campo validade do cartão
        textInvalidateMonth: 'Mês incorreto.', // Mensagem de erro no textField - campo validade do cartão
        colorButton: const Color(0xFFFF9800), // Cor do button
        colorTextButton: Colors.white, // Cor do texto no button
        colorTextField: Colors.grey, // Cor do texto no textField
        colorCardSelect: const Color(0xFFFF9800), // Cor do card selecionado
        colorCreditWhite: const Color(0xFFFF9800), // Cor do cartão
        colorCreditBlack: const Color(0xFFFF9800), // Cor do cartão
        textSizeNumber: 0.06, // Tamanho do número apresentado no cartão
        textSizeName: 0.04, // Tamanho do nome apresentado no cartão
        textSizeMonth: 0.03, // Tamanho do texto apresentado no cartão
        textSizeCVC: 0.03, // Tamanho do texto apresentado no cartão
        viewLayout: false, // Vertical = false, Horizontal = true
        cpfVisibility: true, // Campo do CPF visível = true e false para ocultar o campo
        listBand: ['visa', 'mastercard', 'elo'], // Definir quais cartões estarão disponíveis
         // Função
            )
            ),
      );
    }
      _onTap() async {
        print('Numero do cartão: $creditCardNumber'); // Numero do cartão digitado
        print('Nome no cartão: $creditCardName'); // Nome no cartão digitado
        print('Valido até: $creditCardExpData'); // Validade do cartão
        print('CVV: $creditCardCVV'); // Código de segurança
        print('Bandeira: $creditCardBand'); // Bandeira do cartão
      }
}
