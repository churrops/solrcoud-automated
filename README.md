# solrcloud

1. Baixando o projeto

git clone https://github.com/churrops/solrcoud-automated.git
cd solrcloud-automated 

2. Configurando

vim hosts 
[solrcloud]
192.168.99.100 ansible_user=root ansible_ssh_pass=template
192.168.99.101 ansible_user=root ansible_ssh_pass=template
192.168.99.102 ansible_user=root ansible_ssh_pass=template

[zookeeper]
192.168.99.100 ansible_user=root ansible_ssh_pass=template
192.168.99.101 ansible_user=root ansible_ssh_pass=template
192.168.99.102 ansible_user=root ansible_ssh_pass=template

3. Ajustando as variáveis




