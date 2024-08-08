## Documentação do programa

## Descrição

Este script é um utilitário de manutenção de sistema escrito em Bash. Ele oferece uma série de funções para a administração e otimização de sistemas baseados em Debian/Ubuntu. O script é distribuído sob a Licença Pública Geral GNU (GPL) versão 2.0, o que permite a redistribuição e modificação sob os termos dessa licença.

## Licença

Este programa é software livre; você pode redistribuí-lo e/ou modificá-lo sob os termos da Licença Pública Geral GNU como publicada pela Free Software Foundation; na versão 2 da Licença.

Este programa é distribuído na esperança de que seja útil, mas SEM NENHUMA GARANTIA; sem mesmo a garantia implícita de COMERCIALIZAÇÃO ou ADEQUAÇÃO A UM PROPÓSITO ESPECÍFICO. Consulte a Licença Pública Geral GNU para mais detalhes.

Você deve ter recebido uma cópia da Licença Pública Geral GNU junto com este programa; se não, escreva para a Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

## Pré-requisitos

- Sistema operacional Debian ou baseado em Ubuntu.
- Acesso à conta de superusuário (sudo) para executar comandos administrativos.
- Ferramentas de linha de comando utilizadas: `apt`, `dpkg`, `fsck`, `sysctl`, `find`, `badblocks`, `rsync`.

## Funcionalidades

1. **Atualizar o Sistema**
   - Atualiza a lista de pacotes e instala as atualizações disponíveis.

2. **Limpar Caches e Arquivos Temporários**
   - Remove arquivos temporários e limpa o cache de pacotes.

3. **Verificar Pacotes Quebrados**
   - Configura pacotes pendentes e corrige pacotes quebrados.

4. **Limpar Arquivos de Log Antigos**
   - Remove arquivos de log antigos no diretório `/var/log`.

5. **Verificar e Reparar Erros no Sistema de Arquivos**
   - Verifica e corrige erros no sistema de arquivos da raiz (`/`).

6. **Otimizar o Uso da Memória RAM**
   - Libera memória RAM pelo sistema de cache.

7. **Verificar Badblocks em um Disco**
   - Verifica a presença de setores defeituosos em um dispositivo de armazenamento.

8. **Recuperar Arquivos**
   - Sincroniza arquivos do diretório `home` para um diretório de destino especificado.

9. **Apagar Pastas Vazias**
   - Remove diretórios vazios do diretório `home`.

10. **Procurar e Apagar Pastas Vazias**
    - Remove diretórios vazios do diretório `home`.

11. **Procurar Arquivos Duplicados**
    - Função não implementada.

12. **Sair**
    - Sai do programa.

## Estrutura do Script

O script está estruturado em várias funções que realizam diferentes tarefas de manutenção e um loop principal que exibe um menu para o usuário e executa as opções selecionadas.

### Funções

1. **atualizar_sistema()**
   - Atualiza a lista de pacotes e faz upgrade dos pacotes instalados.

2. **limpar_cache()**
   - Executa `apt autoclean` e `apt autoremove` para limpar caches e arquivos não necessários.

3. **verificar_pacotes()**
   - Usa `dpkg` e `apt` para corrigir pacotes quebrados.

4. **limpar_logs()**
   - Remove arquivos de log antigos usando `find`.

5. **verificar_sistema_arquivos()**
   - Executa `fsck` para verificar e corrigir erros no sistema de arquivos.

6. **otimizar_memoria()**
   - Limpa caches de memória usando `sysctl`.

7. **verificar_badblocks()**
   - Solicita ao usuário o caminho do dispositivo e verifica badblocks.

8. **recuperar_arquivos()**
   - Usa `rsync` para recuperar arquivos do diretório `home` para um destino especificado.

9. **apagar_pastas_vazias()**
   - Remove diretórios vazios do diretório `home`.

10. **procurar_arquivos_duplicados()**
    - Função não implementada.

11. **procurar_reparar_rede()**
    - Função não implementada.

### Menu de Opções

O menu principal é exibido para o usuário selecionar uma das opções de manutenção. Cada opção está associada a uma função específica que é executada quando a opção é selecionada.

### Loop Principal

O loop principal do script exibe o menu e lê a entrada do usuário para executar a função correspondente. O loop continua até que o usuário selecione a opção para sair (`12`).

## Exemplos de Uso

Para atualizar o sistema:

```bash
./manutencao.sh
Selecione a opção 1.
```

Para verificar badblocks em um disco:

```bash
./manutencao.sh
Selecione a opção 8 e insira o caminho do dispositivo.
```

## Notas

- Certifique-se de executar o script com permissões adequadas para evitar erros de acesso.
- A função de procurar arquivos duplicados e reparar rede não está implementada e pode ser adicionada em versões futuras.
```

Você pode ajustar conforme necessário para atender a necessidades específicas ou adicionar mais detalhes.
