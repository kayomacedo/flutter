
// criar função login
// validar email
// validar senha 
// validar no backend 
//direcionar para tela home





//função login
void login( { required String username, required String password}){
  
  final response = validateLogin(username: username, password: password);
  if (response){
    print("Abrindo a Home Page");
  }

}

//verificação de validação senha e usuario

String ? validate({String? username, String ? password}){
  final passwordIsValid = validatePassword(password);
  final usernameIsValid = validateUsername(username);

  if (passwordIsValid == false){
    return "Senha precisa de 6 caracteres";
  }
  if (usernameIsValid == false){
    return"Informe um usuário válido";
  }
  return null;
  
}
//validações

bool validateUsername(String ? username)=>username != null  && username.length >0;
bool validatePassword(String ? password)=> password != null && password.length >= 6; 

bool validateLogin({required String username, required String password}){
  print("Conectando ao servidor...");
  print("Login realizado com successo!");
  return true;
  }

