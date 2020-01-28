#!/usr/bin/env bash

clear
function menuprincipal () {

	TIME=2
	echo ""
	echo "RELATÓRIO DE SUPRIMENTOS DA DICSI"
	echo ""
	echo "Escolha uma opção abaixo para começar!
	
		1- Adicionar pagante
		2- Consultar pagantes
		0- Sair do sistema"
	echo ""
	echo -n "Opção escolhida: "
	read opcao
	case $opcao in
		1)
			function adicionar () {
				data=`date +%d/%m/%y`
				hora=`date | cut -d " " -f 5`
				echo -n "Digite o nome da pessoa: "
				read nome
				echo -n "Digite o valor pago: "
				read valor
				echo "Mês de Janeiro: $nome -> $valor pago no dia: $data às $hora" >> /home/absouza/lista-pagantes.txt
				}
				adicionar
				echo ""
				read -n 1 -p "<Enter> para menu principal"
				menuprincipal
				;;
		2) 
			function consultar () {
				echo A lista de pessoas pagantes está abaixo:
				echo ""
				cat /home/absouza/lista-pagantes.txt	
				}
				consultar
				echo ""
				read -n 1 -p "<Enter> para menu principal"
				menuprincipal
				;;
		0)
			function sair () {
				exit 0
			
			}
			;;
		*)
			echo Opção inválida, tente novamente!
			;;
	esac
	}
	menuprincipal
