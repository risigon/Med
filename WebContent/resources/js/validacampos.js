
		function validausuario(){
			
			var text = document.getElementById("usuario").value;
			if(text==""){
				
				document.getElementById("errorusuario").innerHTML = "Inserir Usuário";
				document.getElementById("errorusuario").style.color = "red";
				
			} else{
				
				document.getElementById("errorusuario").innerHTML = "Ok";
				document.getElementById("errorusuario").style.color = "green";
			}
		}
			
		function validasenha(){
			
			var text = document.getElementById("pass").value;
			if(text==""){
				
				document.getElementById("errorsenha").innerHTML = "Inserir Senha";
				document.getElementById("errorsenha").style.color = "red";
				
			} else{
				
				document.getElementById("errorsenha").innerHTML = "Ok";
				document.getElementById("errorsenha").style.color = "green";
			}
		}
			
			function confirmasenha(){
				
				var text = document.getElementById("pass").value;
				var text2 = document.getElementById("passconf").value;
				if(text==""||text2==""||text!=text2){
					
					document.getElementById("errorconfsenha").innerHTML = "Erro ao Confirmar Senha";
					document.getElementById("errorconfsenha").style.color = "red";
					
				} else{
					
					document.getElementById("errorconfsenha").innerHTML = "Ok";
					document.getElementById("errorconfsenha").style.color = "green";
				}	
			
		}
		
	
		
		

