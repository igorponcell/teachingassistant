FEATURE: Auto-avaliação
		AS aluno 
		I WANT TO auto-avaliar meus "conceitos" na "planilha de notas"
		SO THAT posso enviar minha auto-avaliação para o professor
	
Scenario: Auto-avaliação bem sucedida
		Given Eu tenho a meta de "Entender conceitos de requisitos" auto-avaliada na "planilha de notas" como "MA"
		And Eu tenho a meta de "Especificar requisitos com qualidade" auto-avaliada na "planilha de notas" como "MPA"
		And eu tenho a meta de "Entender conceitos de gerência de configuração" auto-avaliada na "planilha de notas" como "MPA"
		And não existe meta sem avaliação
		When eu tento enviar a auto-avaliação
		Then A auto-avaliação é gerada no sistema com os conceitos "MA, MPA E MPA" para as metas "Entender conceitos de requisitos, Especificar requisitos com qualidade, Entender conceitos de gerência de configuração" respectivamente

Scenario: Auto-avaliação mal sucedida
		Given Eu tenho a meta de "Entender conceitos de requisitos" auto-avaliada na "planilha de notas" como "MA"
		And Eu tenho a meta de "Especificar requisitos com qualidade" auto-avaliada na "planilha de notas" como "MPA"
		And eu tenho a meta de "Entender conceitos de gerência de configuração" auto-avaliada na "planilha de notas" 	não preenchida	
		When eu tento enviar a auto-avaliação
		Then A auto-avaliação não é gerada no sistema por ter uma meta não preenchida 

Scenário: não há alunos discrepantes
		Given estou logado como “professor”
		
		And o estudante “Igor” tem conceitos “MA, MPA, MPA, MANA e MA” nas 
		metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And  o estudante “Igor” se auto-avaliou “MA, MA, MPA, MPA e MPA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" 	respectivamente.
		And a estudante “Marina” tem conceitos “MA, MPA, MPA, MA E MA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And a estudante “Marina”  se auto-avaliou “MPA, MANA, MANA, MPA, MANA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And o estudante “Roberto” tem conceitos “MANA, MPA, MPA, MANA, MPA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And o estudante “Roberto”  se auto-avaliou com “MANA, MPA, MPA, MANA, MPA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.

		When eu clico no botão "gerenciar alunos discrepantes"
		
		And sou direcionado para a tela com a planilha "alunos discrepantes"

		Then eu verei a planilha "Alunos discrepantes" vazia

Scenário: há alunos discrepantes
		Given estou logado como “professor”
		
		And o estudante “Igor” tem conceitos “MA, MPA, MPA, MANA e MA” nas 
		metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And  o estudante “Igor” se auto-avaliou “MA, MA, MPA, MPA e MPA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And a estudante “Marina” tem conceitos “MA, MPA, MPA, MA E MA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And a estudante “Marina”  se auto-avaliou “MPA, MANA, MANA, MPA, MANA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And o estudante “Roberto” tem conceitos “MANA, MPA, MPA, MANA, MPA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.
		And o estudante “Roberto”  se auto-avaliou com “MA, MA, MPA, MPA, MPA” nas metas "Teste, Conceitos, Questionários, Presença e Participação" respectivamente.

		When eu clico no botão "gerenciar alunos discrepantes"
		And sou direcionado para a tela com a planilha "alunos discrepantes"

		Then eu verei a planilha "Alunos discrepantes" 

		And o aluno "Roberto" está na planilha
		And a "quantidade de alunos discrepantes" será "1"
		And o "percentual de alunos discrepantes" será "33%"

