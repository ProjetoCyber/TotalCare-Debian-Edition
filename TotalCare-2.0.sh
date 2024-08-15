# This program is free software; you can redistribute it and/or modify it under the terms
# of the GNU General Public License as published by the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with this program;
# if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301, USA.

#!/bin/bash

# Função para exibir o menu de idiomas
seletor_idioma() {
    echo "========================================"
    echo "     LANGUAGE SELECTOR                  "
    echo "========================================"
    echo "Select a language:"
    echo "1. English"
    echo "2. Português"
    echo "========================================"
}

# Função para definir as mensagens conforme o idioma escolhido
definir_mensagens() {
    case $idioma in
        1) # English
            atualizar_msg="Updating the system..."
            atualizar_concluido="Update completed."
            limpar_cache_msg="Cleaning caches and temporary files..."
            limpar_cache_concluido="Cleaning completed."
            limpar_logs_msg="Cleaning old log files..."
            limpar_logs_concluido="Cleaning completed."
            verificar_pacotes_msg="Checking broken packages..."
            verificar_pacotes_concluido="Check completed."
            verificar_sistema_arquivos_msg="Checking and repairing file system errors..."
            verificar_sistema_arquivos_concluido="Check completed."
            otimizar_memoria_msg="Optimizing RAM usage..."
            otimizar_memoria_concluido="Optimization completed."
            reiniciar_sistema_msg="Rebooting the system..."
            procurar_reparar_rede_msg="Searching and repairing network failures..."
            verificar_badblocks_msg="Checking badblocks on device..."
            verificar_badblocks_concluido="Badblocks check completed."
            apagar_pastas_vazias_msg="Searching and deleting empty folders..."
            apagar_pastas_vazias_concluido="Empty folders deleted."
            procurar_arquivos_duplicados_msg="Searching for duplicate files..."
            recuperar_arquivos_msg="Recovering files from home folder to $destino_dir..."
            recuperar_arquivos_concluido="Files recovery completed."
            limpar_arquivos_temporarios_msg="Cleaning temporary files and old kernels..."
            limpar_arquivos_temporarios_concluido="Temporary files and old kernels cleaned."
            aviso_limpeza="WARNING: This operation will delete all files in /tmp, remove unnecessary packages, and old kernels not used in the last 30 days. Proceed with caution."
            verificar_antivirus_aviso="WARNING: This will install ClamAV, update virus definitions, and perform a full scan. Proceed with caution."
            instalar_clamav_msg="Installing ClamAV..."
            atualizar_definicoes_msg="Updating virus definitions..."
            verificar_antivirus_msg="Performing a full antivirus scan..."
            verificar_antivirus_concluido="Antivirus scan completed."
            reparar_grub_aviso="WARNING: This will install Boot-Repair to fix GRUB issues. Proceed with caution."
            instalar_boot_repair_msg="Installing Boot-Repair..."
            reparar_grub_msg="Repairing GRUB..."
            menu_titulo="       MAINTENANCE PROGRAM        "
            menu_versao="Version: 2.0  Copyright (C) 2024  Projeto Cyber"
            menu_opcoes=(
                "1. Update the system"
                "2. Clean caches and temporary files"
                "3. Check broken packages"
                "4. Clean old log files"
                "5. Check and repair file system errors"
                "6. Optimize RAM usage"
                "7. Search and repair network failures"
                "8. Check badblocks on a disk"
                "9. Search and delete empty folders"
                "10. Search for duplicate files"
                "11. Recover files"
                "12. Disk Cleanup"
                "13. Full Antivirus Scan"
                "14. Repair GRUB"
                "15. Exit"
            )
            prompt_msg="Enter your choice: "
            ;;
        2) # Português
            atualizar_msg="Atualizando o sistema..."
            atualizar_concluido="Atualização concluída."
            limpar_cache_msg="Limpando caches e arquivos temporários..."
            limpar_cache_concluido="Limpeza concluída."
            limpar_logs_msg="Limpando arquivos de log antigos..."
            limpar_logs_concluido="Limpeza concluída."
            verificar_pacotes_msg="Verificando pacotes quebrados..."
            verificar_pacotes_concluido="Verificação concluída."
            verificar_sistema_arquivos_msg="Verificando e reparando erros no sistema de arquivos..."
            verificar_sistema_arquivos_concluido="Verificação concluída."
            otimizar_memoria_msg="Otimizar o uso da memória RAM..."
            otimizar_memoria_concluido="Otimização concluída."
            reiniciar_sistema_msg="Reiniciando o sistema..."
            procurar_reparar_rede_msg="Procurando e reparando falhas na rede..."
            verificar_badblocks_msg="Verificando badblocks em um disco..."
            verificar_badblocks_concluido="Verificação de badblocks concluída."
            apagar_pastas_vazias_msg="Procurando e apagando pastas vazias..."
            apagar_pastas_vazias_concluido="Pastas vazias apagadas."
            procurar_arquivos_duplicados_msg="Procurando arquivos duplicados..."
            recuperar_arquivos_msg="Recuperando arquivos da pasta 'home' para $destino_dir..."
            recuperar_arquivos_concluido="Recuperação de arquivos concluída."
            limpar_arquivos_temporarios_msg="Limpando arquivos temporários e kernels antigos..."
            limpar_arquivos_temporarios_concluido="Arquivos temporários e kernels antigos limpos."
            aviso_limpeza="AVISO: Esta operação irá deletar todos os arquivos em /tmp, remover pacotes desnecessários e kernels antigos não utilizados nos últimos 30 dias. Prossiga com cautela."
            verificar_antivirus_aviso="AVISO: Isso irá instalar o ClamAV, atualizar as definições de vírus e realizar uma verificação completa. Prossiga com cautela."
            instalar_clamav_msg="Instalando o ClamAV..."
            atualizar_definicoes_msg="Atualizando definições de vírus..."
            verificar_antivirus_msg="Realizando uma verificação completa com antivírus..."
            verificar_antivirus_concluido="Verificação com antivírus concluída."
            reparar_grub_aviso="AVISO: Isso irá instalar o Boot-Repair para corrigir problemas no GRUB. Prossiga com cautela."
            instalar_boot_repair_msg="Instalando o Boot-Repair..."
            reparar_grub_msg="Reparando o GRUB..."
            menu_titulo="       PROGRAMA DE MANUTENÇÃO        "
            menu_versao="Versão: 2.0  Copyright (C) 2024 Projeto Cyber"
            menu_opcoes=(
                "1. Atualizar o sistema"
                "2. Limpar caches e arquivos temporários"
                "3. Verificar pacotes quebrados"
                "4. Limpar arquivos de log antigos"
                "5. Verificar e reparar erros no sistema de arquivos"
                "6. Otimizar o uso da memória RAM"
                "7. Procurar e reparar falhas na rede"
                "8. Verificar badblocks em um disco"
                "9. Procurar e apagar pastas vazias"
                "10. Procurar arquivos duplicados"
                "11. Recuperar arquivos"
                "12. Limpeza de disco"
                "13. Verificação completa com antivírus"
                "14. Reparar GRUB"
                "15. Sair"
            )
            prompt_msg="Digite a opção desejada: "
            ;;
        *) # Padrão (Português)
            atualizar_msg="Atualizando o sistema..."
            atualizar_concluido="Atualização concluída."
            limpar_cache_msg="Limpando caches e arquivos temporários..."
            limpar_cache_concluido="Limpeza concluída."
            limpar_logs_msg="Limpando arquivos de log antigos..."
            limpar_logs_concluido="Limpeza concluída."
            verificar_pacotes_msg="Verificando pacotes quebrados..."
            verificar_pacotes_concluido="Verificação concluída."
            verificar_sistema_arquivos_msg="Verificando e reparando erros no sistema de arquivos..."
            verificar_sistema_arquivos_concluido="Verificação concluída."
            otimizar_memoria_msg="Otimizar o uso da memória RAM..."
            otimizar_memoria_concluido="Otimização concluída."
            reiniciar_sistema_msg="Reiniciando o sistema..."
            procurar_reparar_rede_msg="Procurando e reparando falhas na rede..."
            verificar_badblocks_msg="Verificando badblocks em um disco..."
            verificar_badblocks_concluido="Verificação de badblocks concluída."
            apagar_pastas_vazias_msg="Procurando e apagando pastas vazias..."
            apagar_pastas_vazias_concluido="Pastas vazias apagadas."
            procurar_arquivos_duplicados_msg="Procurando arquivos duplicados..."
            recuperar_arquivos_msg="Recuperando arquivos da pasta 'home' para $destino_dir..."
            recuperar_arquivos_concluido="Recuperação de arquivos concluída."
            limpar_arquivos_temporarios_msg="Limpando arquivos temporários e kernels antigos..."
            limpar_arquivos_temporarios_concluido="Arquivos temporários e kernels antigos limpos."
            aviso_limpeza="AVISO: Esta operação irá deletar todos os arquivos em /tmp, remover pacotes desnecessários e kernels antigos não utilizados nos últimos 30 dias. Prossiga com cautela."
            verificar_antivirus_aviso="AVISO: Isso irá instalar o ClamAV, atualizar as definições de vírus e realizar uma verificação completa. Prossiga com cautela."
            instalar_clamav_msg="Instalando o ClamAV..."
            atualizar_definicoes_msg="Atualizando definições de vírus..."
            verificar_antivirus_msg="Realizando uma verificação completa com antivírus..."
            verificar_antivirus_concluido="Verificação com antivírus concluída."
            reparar_grub_aviso="AVISO: Isso irá instalar o Boot-Repair para corrigir problemas no GRUB. Prossiga com cautela."
            instalar_boot_repair_msg="Instalando o Boot-Repair..."
            reparar_grub_msg="Reparando o GRUB..."
            menu_titulo="       PROGRAMA DE MANUTENÇÃO        "
            menu_versao="Versão: 2.0  Copyright (C) 2024 Projeto Cyber"
            menu_opcoes=(
                "1. Atualizar o sistema"
                "2. Limpar caches e arquivos temporários"
                "3. Verificar pacotes quebrados"
                "4. Limpar arquivos de log antigos"
                "5. Verificar e reparar erros no sistema de arquivos"
                "6. Otimizar o uso da memória RAM"
                "7. Procurar e reparar falhas na rede"
                "8. Verificar badblocks em um disco"
                "9. Procurar e apagar pastas vazias"
                "10. Procurar arquivos duplicados"
                "11. Recuperar arquivos"
                "12. Limpeza de disco"
                "13. Verificação completa com antivírus"
                "14. Reparar GRUB"
                "15. Sair"
            )
            prompt_msg="Digite a opção desejada: "
            ;;
    esac
}

# Função para limpar arquivos temporários e kernels antigos
limpar_arquivos_temporarios() {
    echo "$aviso_limpeza"
    read -p "Deseja continuar? (s/n): " confirmacao
    if [[ $confirmacao =~ ^[Ss]$ ]]; then
        echo "$limpar_arquivos_temporarios_msg"
        sudo rm -rf /tmp/*
        sudo apt-get autoremove --purge -y
        sudo apt-get autoclean
        sudo apt-get clean
        sudo journalctl --vacuum-time=30d
        echo "$limpar_arquivos_temporarios_concluido"
    else
        echo "Operação cancelada."
    fi
}

# Função para verificar e instalar o ClamAV e realizar a verificação
verificar_antivirus() {
    echo "$verificar_antivirus_aviso"
    read -p "Deseja continuar? (s/n): " confirmacao
    if [[ $confirmacao =~ ^[Ss]$ ]]; then
        echo "$instalar_clamav_msg"
        sudo apt-get install clamav -y
        echo "$atualizar_definicoes_msg"
        sudo freshclam
        echo "$verificar_antivirus_msg"
        sudo clamscan -r / | tee antivirus_scan.txt
        echo "$verificar_antivirus_concluido"
    else
        echo "Operação cancelada."
    fi
}

# Função para reparar o GRUB
reparar_grub() {
    echo "$reparar_grub_aviso"
    read -p "Deseja continuar? (s/n): " confirmacao
    if [[ $confirmacao =~ ^[Ss]$ ]]; then
        echo "$instalar_boot_repair_msg"
        sudo add-apt-repository ppa:yannubuntu/boot-repair -y
        sudo apt-get update
        sudo apt-get install boot-repair -y
        echo "$reparar_grub_msg"
        boot-repair
    else
        echo "Operação cancelada."
    fi
}

# Função para realizar as ações do menu
executar_acao() {
    case $opcao in
        1)
            echo "$atualizar_msg"
            sudo apt-get update && sudo apt-get upgrade -y
            echo "$atualizar_concluido"
            ;;
        2)
            echo "$limpar_cache_msg"
            sudo apt-get clean && sudo apt-get autoremove -y
            echo "$limpar_cache_concluido"
            ;;
        3)
            echo "$verificar_pacotes_msg"
            sudo dpkg --configure -a
            sudo apt-get check
            echo "$verificar_pacotes_concluido"
            ;;
        4)
            echo "$limpar_logs_msg"
            sudo journalctl --vacuum-time=30d
            echo "$limpar_logs_concluido"
            ;;
        5)
            echo "$verificar_sistema_arquivos_msg"
            sudo fsck -Af -M
            echo "$verificar_sistema_arquivos_concluido"
            ;;
        6)
            echo "$otimizar_memoria_msg"
            sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
            echo "$otimizar_memoria_concluido"
            ;;
        7)
            echo "$procurar_reparar_rede_msg"
            sudo systemctl restart NetworkManager
            echo "$procurar_reparar_rede_msg"
            ;;
        8)
            read -p "Digite o caminho do dispositivo para verificar (ex: /dev/sda): " dispositivo
            echo "$verificar_badblocks_msg"
            sudo badblocks -v $dispositivo
            echo "$verificar_badblocks_concluido"
            ;;
        9)
            echo "$apagar_pastas_vazias_msg"
            find / -type d -empty -delete
            echo "$apagar_pastas_vazias_concluido"
            ;;
        10)
            echo "$procurar_arquivos_duplicados_msg"
            fdupes -r / | tee duplicados.txt
            ;;
        11)
            read -p "Digite o caminho de destino para a recuperação de arquivos: " destino_dir
            echo "$recuperar_arquivos_msg"
            cp -r ~/ $destino_dir
            echo "$recuperar_arquivos_concluido"
            ;;
        12)
            limpar_arquivos_temporarios
            ;;
        13)
            verificar_antivirus
            ;;
        14)
            reparar_grub
            ;;
        15)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida. Tente novamente."
            ;;
    esac
}

# Exibir menu de idiomas
seletor_idioma
read -p "Choose the language: " idioma
definir_mensagens

while true; do
    echo "========================================"
    echo "$menu_titulo"
    echo "========================================"
    echo "$menu_versao"
    echo "========================================"
    for opcao_menu in "${menu_opcoes[@]}"; do
        echo "$opcao_menu"
    done
    echo "========================================"
    read -p "$prompt_msg" opcao
    executar_acao
done
