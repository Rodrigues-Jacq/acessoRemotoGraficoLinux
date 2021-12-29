#!/bin/bash

ACESSO=$(zenity --list --text "Acesso remoto" --radiolist --column "Escolha" --column "Tipo de acesso" TRUE SSH FALSE TELNET)

case $ACESSO in 
	SSH)
		zenity --info --text="Você escolheu $ans, este é o modo mais seguro"
		USER=$(zenity --entry --title="Acesso SSH" --text="Informe o usuário da máquina")
		IP=$(zenity --entry --title="Acesso SSH" --text="Informe o endereço IP")
		ssh $USER@$IP
		;;
	TELNET)
		zenity --info --text="Você escolheu $ans, ele não utiliza criptografia"
		IP=$(zenity --entry --title="Acesso TELNET" --text="Informe o endereço IP")
		telnet $IP
		;;
	*)
		zenity --error --text="Opção inválida"
esac
