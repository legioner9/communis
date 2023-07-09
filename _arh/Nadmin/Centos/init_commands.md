## enter sudo

    sudo su - root

    # cd /usr/lib/sistemd/sistem
    # cd /usr/lib/sistemd/user

    # cd /etc/sistemd/system
    # cd /etc/sistemd/user
    
    # systemctl list-units
    # systemctl --failed
    # systemctl list-units --type=service

    # systemctl status crond
    # systemctl stop crond
    # systemctl start crond

    # runlevel
    # systemctl isolate reboot

    # systemctl set-default -f muli-user.target

    # journalctl -n 10
    # journalctl _UID=



