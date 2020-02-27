#!/bin/bash
echo "Bem vindo ao Script de Backup de dados - Kali Linux"
echo ""
echo "Criado por Joas Antonio"
echo ""

#install
apt-get update
echo ""
echo ""
apt-get install rclone
echo ""
cat instructions.txt
echo ""
rclone config
echo ""
mkdir ../backupdata
echo ""
rclone mount googledrive: ../backupdata/ &
echo ""
