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
