# Este programa é software livre; você pode redistribuí-lo e/ou modificá-lo sob os termos
# da Licença Pública Geral GNU como publicada pela Free Software Foundation; na versão 2 da Licença.

# Este programa é distribuído na esperança de que seja útil, mas SEM NENHUMA GARANTIA; 
# sem mesmo a garantia implícita de COMERCIALIZAÇÃO ou ADEQUAÇÃO A UM PROPÓSITO ESPECÍFICO.
# Consulte a Licença Pública Geral GNU para mais detalhes.

# Você deve ter recebido uma cópia da Licença Pública Geral GNU junto com este programa;
# se não, escreva para a Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, 
# Boston, MA 02110-1301, USA.

#!/bin/bash

# Função para atualizar sistema
atualizar_sistema() {
    echo "Atualizando o sistema..."
    sudo apt update && sudo apt upgrade -y
    echo "Atualização concluída."
}

# Função para limpar caches e arquivos temporários
limpar_cache() {
    echo "Limpando caches e arquivos temporários..."
    sudo apt autoclean && sudo apt autoremove -y
    echo "Limpeza concluída."
}

# Função para verificar e corrigir pacotes quebrados
verificar_pacotes() {
    echo "Verificando pacotes quebrados..."
    sudo dpkg --configure -a
    sudo apt --fix-broken install -y
    echo "Verificação concluída."
}

# Função para limpar arquivos de log antigos
limpar_logs() {
    echo "Limpando arquivos de log antigos..."
    sudo find /var/log -type f -regex '.*\.gz$' -delete
    sudo find /var/log -type f -regex '.*\.[0-9]$' -delete
    echo "Limpeza concluída."
}

# Função para verificar e reparar erros no sistema de arquivos
verificar_sistema_arquivos() {
    echo "Verificando e reparando erros no sistema de arquivos..."
    sudo fsck -y /
    echo "Verificação concluída."
}

# Função para otimizar o uso da memória RAM
otimizar_memoria() {
    echo "Otimizando o uso da memória RAM..."
    sudo sysctl -w vm.drop_caches=3
    echo "Otimização concluída."
}

# Função para reiniciar o sistema
reiniciar_sistema() {
    echo "Reiniciando o sistema..."
    sudo reboot
}

# Função para procurar e apagar pastas vazias
apagar_pastas_vazias() {
    echo "Procurando e apagando pastas vazias..."
    find "$HOME" -type d -empty -delete
    echo "Apagando pastas vazias concluído."
}

# Função para verificar badblocks em um disco
verificar_badblocks() {
    read -p "Digite o caminho do dispositivo para verificar badblocks (Exemplo: /dev/sda): " dispositivo
    echo "Verificando badblocks no dispositivo $dispositivo..."
    sudo badblocks -v $dispositivo
    echo "Verificação de badblocks concluída."
}

# Função para recuperar arquivos
recuperar_arquivos() {
    # Diretório da pasta 'home'
    home_dir="$HOME"

    # Diretório de destino (onde os arquivos serão recuperados)
    destino_dir="/home"

    echo "Recuperando arquivos da pasta 'home' para $destino_dir..."
    rsync -av --progress "$home_dir/" "$destino_dir"
    echo "Recuperação de arquivos concluído."
}

# Função para exibir o menu de opções
exibir_menu() {
    echo "========================================"
    echo "       PROGRAMA DE MANUTENÇÃO        "
    echo "========================================"
    echo "Versão: 1.0"
    echo
    echo "Selecione uma opção:"
    echo
    echo "1. Atualizar o sistema"
    echo "2. Limpar caches e arquivos temporários"
    echo "3. Verificar pacotes quebrados"
    echo "4. Limpar arquivos de log antigos"
    echo "5. Verificar e reparar erros no sistema de arquivos"
    echo "6. Otimizar o uso da memória RAM"
    echo "7. Procurar e reparar falhas na rede"
    echo "8. Verificar badblocks em um disco"
    echo "9. Procurar e apagar pastas vazias"
    echo "10. Procurar arquivos duplicados"
    echo "11. Recuperar arquivos"
    echo "12. Sair"
    echo "========================================"
}

# Loop principal do programa
while true; do
    exibir_menu
    read -p "Opção: " opcao

    case $opcao in
        1)
            atualizar_sistema
            ;;
        2)
            limpar_cache
            ;;
        3)
            verificar_pacotes
            ;;
        4)
            limpar_logs
            ;;
        5)
            verificar_sistema_arquivos
            ;;
        6)
            otimizar_memoria
            ;;
        7)
            procurar_reparar_rede
            ;;
        8)
            verificar_badblocks
            ;;
        9)
            apagar_pastas_vazias
            ;;
        10)
            procurar_arquivos_duplicados
            ;;
        11)
            recuperar_arquivos
            ;;
        12)
            echo "Saindo do programa..."
            break
            ;;
        *)
            echo "Opção inválida. Por favor, selecione uma opção válida."
            ;;
    esac

    echo
done
