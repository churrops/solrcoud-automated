# Solr Cloud with external Zookeeper

# PROJETO EM DESENVOLVIMENTO!

## 1. Baixando o projeto

```sh
git clone https://github.com/churrops/solrcoud-automated.git
cd solrcloud-automated 
```

## 2. Configurando

```sh
vim hosts 

[solrcloud]
192.168.99.100 ansible_user=root ansible_ssh_pass=template
192.168.99.101 ansible_user=root ansible_ssh_pass=template
192.168.99.102 ansible_user=root ansible_ssh_pass=template

[zookeeper]
192.168.99.100 ansible_user=root ansible_ssh_pass=template id=1
192.168.99.101 ansible_user=root ansible_ssh_pass=template id=2
192.168.99.102 ansible_user=root ansible_ssh_pass=template id=3
```
## 3. Ajustando as variáveis

```sh
ls group__vars

all  solrcloud  zoopeker
```

## Realizando deploy

```sh
./deploy.sh
```
