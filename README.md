# Ansible Role:  prepare 


## Description 
Ansible role for initial OS preparation  


## Tasks description and tags

```yaml

playbook: playbook.yml

  play #1 (all): Check OS Type	TAGS: [OS]
    tasks:
      prepare : Deploy root dotfiles	TAGS: [OS, root]
      prepare : Read list of home directories	TAGS: [OS, user]
      prepare : Deploy .bashrc to each user directory	TAGS: [OS, user]
      prepare : Deploy .vimrc to each user directory	TAGS: [OS, user]
      prepare : Deploy .tmux.conf to each user directory	TAGS: [OS, user]
      prepare : Deploy skeleton files for new users	TAGS: [OS, user]
      prepare : Deploy global shell environment	TAGS: [OS, profile]
      prepare : Update apt cache (Debian)	TAGS: [OS, packages]
      prepare : Install common packages	TAGS: [OS, packages]
      prepare : Install Debian packages	TAGS: [OS, packages]
      prepare : Install RHEL packages	TAGS: [OS, packages]
      Display OS Type	TAGS: [OS]
      Display OS Family and VM ip address	TAGS: [OS]
```
### To run use

```bash
ansible-playbook -i inventory.yml playbook.yml -K
```

### To run specific task use tag

```bash
ansible-playbook -i inventory.yml playbook.yml --tags profile -K
```

### To list all task use

```bash
ansible-playbook -i inventory.yml playbook.yml --list-tasks 
```

### To run and watch detail info use 

```bash
ansible-playbook -i inventory.yml playbook.yml -Dv -K
```

## Default Variables

| Variable | Default | Description |
|----------|---------|------------|
| prepare_common_packages | ['bash-completion', 'vim', 'mc', 'tree', 'git', 'curl', 'wget', 'tar', 'tcpdump', 'jq', 'nmap', 'iptables'] | Packages installed on all supported OS |
| prepare_debian_packages | ['dnsutils', 'net-tools', 'ipset', 'ipset-persistent', 'iptables-persistent', 'netfilter-persistent'] | Debian-specific packages |
| prepare_rhel_packages | ['bind-utils'] | RHEL/OracleLinux-specific packages |


## Quality

![ansible-lint](https://img.shields.io/badge/ansible--lint-passed-brightgreen)
![platforms](https://img.shields.io/badge/platforms-EL%20%7C%20Debian-blue)
![license](https://img.shields.io/badge/license-MIT-green)


**Author:** rayne (https://github.com/rayneadm)  

[LICENSE MIT](LICENSE)  
