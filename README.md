# SolrCloud com Zookeeper Externo

### Descrição

Instalação automatizada do SolrCloud com Zookeeper externo.

### Compatibilidade

Sistema(s) Operacional(is) homologado(s):

| S.O | Versão |
| ------ | ------ |
| Centos | Centos 7.x ou superior |

### Pré-requisitos

Pacotes necessários para a execução do projeto:

* git > 2.x.x
* ansible >  2.4.x.x

### Baixando o projeto

```sh
$ git clone https://github.com/churrops/solrcoud-automated.git
$ cd solrcloud-automated 
```

### Configuração do arquivo de inventário

##### AWS EC2
Para a execução na AWS, o arquivo hosts precisa estar configurado com o "Private DNS Name", e o deploy precisa ser executado dentro de uma instância que consiga se conectar nas instâncias que de fato terão a aplicação

AWS:
```sh
$ vim ansible/inventories/aws/prd/hosts

[solrcloud]
host_solr1
host_solr1

[zookeeper]
host_zookeeper1 id=1  become=true
host_zookeeper2 id=2  become=true
host_zookeeper3 id=3  become=true

[all:vars]
ansible_user=centos
ansible_become=true
```
##### Ambiente local (VirtualBox, VMWare)


Second Tab:
```sh
$ vim ansible/inventories/vbox/prd/hosts 
[zookeeper] 
192.168.99.105 id=1
192.168.99.106 id=2
192.168.99.107 id=3

[solrcloud]
192.168.99.100 
192.168.99.101

[all:vars]
ansible_user=root
ansible_ssh_pass=template
```

#### Ajustando as váriáveis
Os arquivos de variáveis contém as informações que serão utilizadas no bootstrap do projeto

```sh
$ vim ansile/group_vars/all
```
Variáveis para o SolrCloud
```sh
$ vim ansile/group_vars/solrcloud
```
Variáveis para o Zookeeeper
```sh
$ vim ansile/group_vars/zookeeper
```

#### Deploy
AWS:
```sh
$ ./deploy.sh aws prd ~/.ssh/id_rsa
```
```
### To Dos

 - Habilitar autenticação
