#!/bin/bash

#cores

corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"

#Copyright© NocivoCracker 2017 - 2018
clear
echo "$azul		_______________________________
		$amarelo _   _            _            
		| \ | | ___   ___(_)_   _____  
		|  \| |/ _ \ / __| \ \ / / _ \ 
		$verdeClaro| |\  | (_) | (__| |\ V / (_) |
		|_| \_|\___/ \___|_| \_/ \___/
$azul		_______________________________"
echo "

$branco criador de pendrive bootavel (necessita modo root)"
sleep 1.8
echo "$verde"
lsblk
echo "$branco"
echo ""
echo "digite seu pendrive , geralmende é o $verdeClaro sdb $branco ou o ultimo item da lista :"
echo "$cinzaClaro se não sabe qual é o seu pendrive retire ele , reinicie o script e veja o item que falta"
read pen
sleep 0.8
echo "$branco"
echo ""
echo " Digite o caminho de sua ISO (imagem) de seu sistema desejado :"; echo "$cinzaClaro ex:/home/user/Downloads/linux.iso"
read caminho
sleep 2.0
echo ""
echo ""
clear
echo "$verde[$vermelho*$verde]$branco criando..."
echo "$cinzaClaro se o script ficar parado por muito tempo é porque sua iso é pesada e está dando certo , se algo estiver invalido vai aparecer "
sleep 3.0
dd if=$caminho of=/dev/$pen bs=4M
echo "$verdeClaro processo terminado"
