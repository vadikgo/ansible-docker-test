# get hash {ansible_hostname: ansible_default_ipv4.address} from dict of hosts info
# get hosts dict from 'docker' group
# {{groups['docker']|map('extract', hostvars)|host_and_ip}}

def host_and_ip(val):
    etc_hosts = {}
    for host in val:
        etc_hosts[host['ansible_hostname']] = host['ansible_default_ipv4']['address']
    return etc_hosts

class FilterModule(object):
    def filters(self):
        return {
            'host_and_ip': host_and_ip,
        }
