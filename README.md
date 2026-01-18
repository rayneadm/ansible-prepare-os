<!-- BEGIN AUTOGEN -->
# prepare

Ansible role for initial OS preparation

**Author:** rayne (https://github.com/rayneadm)

## Project structure of role `prepare`

```text
prepare
├── defaults
│   └── main.yml
├── files
│   ├── custom
│   └── motd
├── meta
│   └── main.yml
└── tasks
    ├── main.yml
    ├── packages.yml
    ├── profile.yml
    ├── root.yml
    └── users.yml

5 directories, 9 files
```

## Ansible task list

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

## Role tasks

### main.yml

- **List all tasks of this role**
  - - This is the better place for include your jobs
- `Setting for root`
- `Setting for users`
- `Profile tings`
- `Install packages`

### packages.yml

- **Install packages for Debian and RHEL OS family**
  - - To change list of packages edit: `default/main.yml`
  - - *To run this task use tag* `-t packages`
- **Установка набора пакетов для Debina, RHEL семейстава ОС**
  - - Определить составв пакетов можно в `default/main.yml`
  - - *запустить эту задачу с тегом* `-t packages`
- `Update apt cache (Debian)`
- `Install common packages`
- `Install Debian packages`
- `Install RHEL packages`

### profile.yml

- **Install custom motd**
  - - Also install some varables
  - - *To run this task use tag* `-t profile`
- **Установка информативного motd сообщения при входе в систему**
  - - **Taк же устанавливает переменные**
  - - копирует motd.sh, custom.sh
  - - *запустить эту задачу с тегом* `-t profile`
- `Deploy global shell environment`

### root.yml

- **Install dotfiles to root profile**
  - - This tasj copy .bashrc, .vimrc, .tmux.conf
  - - *To run this task use tag* `-t root`
- **Установка dotfiles для профиля пользователя root**
  - - копирует .bashrc, .vimrc, .tmux.conf
  - - *запустить эту задачу с тегом* `-t root`
- `Deploy root dotfiles`

### users.yml

- **Install dotfiles for exist users profile**
  - - **Also copy dotfiles in ** `/etc/skel` **for users wich will be add later**
  - - Copy files: .bashrc, .vimrc, .tmux.conf
  - - *To run this task use tag* `-t user`
- **Установка dotfiles для профилей существующих пользователей**
  - - **Tак же копирует dotfiles в** `/etc/skel` **для перспективных пользователей**
  - - копирует .bashrc, .vimrc, .tmux.conf
  - - *запустить эту задачу с тегом* `-t user`
- `Read list of home directories`
- `Deploy .bashrc to each user directory`
- `Deploy .vimrc to each user directory`
- `Deploy .tmux.conf to each user directory`
- `Deploy skeleton files for new users`


## Default variables

| Variable | Default |
|---------|---------|
| `prepare_common_packages` | `['bash-completion', 'vim', 'mc', 'tree', 'git', 'curl', 'wget', 'tar', 'tcpdump', 'jq', 'nmap', 'iptables']` |
| `prepare_debian_packages` | `['sudo', 'dnsutils', 'net-tools', 'ipset', 'ipset-persistent', 'iptables-persistent', 'netfilter-persistent']` |
| `prepare_debian_packages` | `['dnsutils', 'net-tools', 'ipset', 'ipset-persistent', 'iptables-persistent', 'netfilter-persistent']` |
| `prepare_rhel_packages` | `['bind-utils']` |

## How to run

### Run playbook
```bash
ansible-playbook -i inventory.yml playbook.yml
```
### Run specific task by tag
```bash
ansible-playbook -i inventory.yml playbook.yml --tags TAG
```
### List all tasks
```bash
ansible-playbook -i inventory.yml playbook.yml --list-tasks
```
### Run with verbose output
```bash
ansible-playbook -i inventory.yml playbook.yml -Dv
```
<!-- END AUTOGEN -->