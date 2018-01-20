#!/bin/bash

## Cores de Fonte
K="\033[1;30m" # Black (Preto)
R="\033[1;31m" # Red (Vermelho)
G="\033[1;32m" # Green (Verde)
Y="\033[1;33m" # Yellow (Amarelo)
B="\033[1;34m" # Blue (Azul)
M="\033[1;35m" # Magenta (Vermelho Claro)
C="\033[1;36m" # Cyan (Ciano - Azul Claro)
W="\033[1;37m" # White (Branco)

## Efeito Negrito (bold) e cores
BK="\033[1;30m" # Bold+Black (Negrito+Preto)
BR="\033[1;31m" # Bold+Red (Negrito+Vermelho)
BG="\033[1;32m" # Bold+Green (Negrito+Verde)
BY="\033[1;33m" # Bold+Yellow (Negrito+Amarelo)
BB="\033[1;34m" # Bold+Blue (Negrito+Azul)
BM="\033[1;35m" # Bold+Magenta (Negrito+Vermelho Claro)
BC="\033[1;36m" # Bold+Cyan (Negrito+Ciano - Azul Claro)
BW="\033[1;37m" # Bold+White (Negrito+Branco)

## Cores de fundo (backgroud)
BGK="\033[0;1;40m" # Black (Preto)
BGR="\033[0;1;44m" # Red (Vermelho)
BGG="\033[0;1;42m" # Green (Verde)
BGY="\033[0;1;0m" # Yellow (Amarelo)
BGB="\033[0;1;44m" # Blue (Azul)
BGM="\033[0;1;45m" # Magenta (Vermelho Claro)
BGC="\033[0;1;46m" # Cyan (Ciano - Azul Claro)
BGW="\033[0;1;47m" # White (Branco)
#Copyright© NocivoCracker 2017 - 2018
clear
echo "		

$B███╗   ██╗$G ██████╗ $Y ██████╗$R██╗$M██╗   ██╗$C ██████╗ 
$B████╗  ██║$G██╔═══██╗$Y██╔════╝$R██║$M██║   ██║$C██╔═══██╗
$B██╔██╗ ██║$G██║   ██║$Y██║     $R██║$M██║   ██║$C██║   ██║
$B██║╚██╗██║$G██║   ██║$Y██║     $R██║$M╚██╗ ██╔╝$C██║   ██║
$B██║ ╚████║$G╚██████╔╝$Y╚██████╗$R██║ $M╚████╔╝ $C╚██████╔╝
$B╚═╝  ╚═══╝ $G╚═════╝  $Y╚═════╝$R╚═╝  $M╚═══╝   $C╚═════╝
$B     Copyright© NocivoCracker 2017-2018"
echo "$G=============================================="
echo "$BGR"
echo "$W 1 - criar pendrive bootável"
echo ""
echo "$W 2 - formatar pendrive"
echo ""
echo "$W 3 - Baixar Distros"
echo "$BGY"
echo "$Y"
read -p "Digite a opção desejada: " opc
#menu
case "$opc" in
	1)
clear
echo "$B================================================================="
		echo "$Y criador de pendrive bootavel (necessita modo root)"
		echo "$B"
		sleep 1.8
		echo "$G"
		lsblk
		echo "$B"
		echo ""
		echo "$W digite seu pendrive , geralmende é o $G sdb $W ou o ultimo item da lista :"
		echo "$B se não sabe qual é o seu pendrive retire ele , reinicie o script e veja o item que falta"
		echo "$B"
		read -p "--->>>" pen
		sleep 0.8
		echo "$B"
		echo ""
		echo "$W Digite o caminho de sua ISO (imagem) de seu sistema desejado :"
		echo "$B"
		echo "$B ex:/home/user/Downloads/linux.iso"
		echo "$B"
		read -p "-->>>" caminho
		sleep 2.0
		echo ""
		echo ""
		clear
echo "$G[$R*$G]$W criando..."
echo "$G se o script ficar parado por muito tempo é porque sua iso é pesada e está dando certo , se algo 	estiver invalido vai aparecer "
		echo "$W"
		sleep 3.0
		dd if=$caminho of=/dev/$pen bs=4M status=progress
echo "$G processo terminado"
		;;
	2)
clear
echo "$azul====================================================="
		echo "$W Formatar Pendrive"
		echo "$G"
		lsblk
		echo "$W Digite o pendrive que deseja formatar"
echo "$B"
		read -p "-->>>" des
		sleep 1.8
		echo "$G[$R*$G]$W formatando..."
		dd if=/dev/zero of=/dev/$des bs=1M status=progress
		echo "$G processo terminado"
		;;
	3)
		echo "$W Distros Disponíveis:"
		echo "$Y

$R =========================================32 BITS================================================================
$B parrot
https://pt.osdn.net/projects/sfnet_parrotsecurity/downloads/iso/3.7/Parrot-full-3.7_i386.iso/


Debian
https://cdimage.debian.org/debian-cd/current/i386/iso-dvd/debian-9.3.0-i386-DVD-2.iso

Ubuntu
http://releases.ubuntu.com/16.04/ubuntu-16.04.3-desktop-i386.iso.torrent?_ga=2.131407116.2058291469.1516282214-863651667.1516282214

Kali linux 
http://cdimage.kali.org/kali-2017.3/kali-linux-2017.3-i386.iso

Linux Mint
https://torrents.linuxmint.com/torrents/linuxmint-18.3-mate-32bit.iso.torrent

openSUSE
http://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-GNOME-Live-i686-Current.iso

Fedora
https://download.fedoraproject.org/pub/fedora-secondary/releases/27/Workstation/i386/iso/Fedora-Workstation-netinst-i386-27-1.6.iso

CentOS
http://mirror.ufam.edu.br/centos/6.9/isos/i386/CentOS-6.9-i386-bin-DVD1.iso

Slackware
http://www.slackware.com/torrents/slackware-14.2-install-d1.torrent

Arch Linux
https://static.dopsi.ch/al32/archlinux-2018.01.01-i686.iso.torrent

Gentoo
http://gentoo.ussg.indiana.edu//releases/x86/20160704/livedvd-x86-amd64-32ul-20160704.iso


$R ===========================================64 Bits========================================================
$B parrot
https://pt.osdn.net/projects/sfnet_parrotsecurity/downloads/iso/3.7/Parrot-full-3.7_amd64.iso/


Debian
https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-9.3.0-amd64-DVD-2.iso

Ubuntu
http://releases.ubuntu.com/16.04/ubuntu-16.04.3-server-amd64.iso.torrent?_ga=2.131407116.2058291469.1516282214-863651667.1516282214

Kali linux 
http://cdimage.kali.org/kali-2017.3/kali-linux-2017.3-amd64.iso

Linux Mint
https://torrents.linuxmint.com/torrents/linuxmint-18.3-mate-64bit.iso.torrent

openSUSE
http://download.opensuse.org/distribution/leap/42.3/iso/openSUSE-Leap-42.3-DVD-x86_64.iso.torrent

Fedora
https://download.fedoraproject.org/pub/fedora/linux/releases/27/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-27-1.6.iso

CentOS
http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-DVD-1708.iso

Slackware
http://www.slackware.com/torrents/slackware64-14.2-install-dvd.torrent

Arch Linux
https://www.archlinux.org/releng/releases/2018.01.01/torrent/

Gentoo
http://gentoo.mirrors.tds.net/pub/gentoo//releases/amd64/20160704/livedvd-amd64-multilib-20160704.iso"
;;
	Debian)
		echo "$Y ele serve para servidores"
		;;
	*)
echo "$R opção inválida"
;;
esac