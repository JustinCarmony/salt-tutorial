def is_fedora(name, **kwargs):
    ret = {'name': name, 'result': False, 'changes': {}, 'comment': {}}

    if __grains__['os_family'] == 'RedHat':
        ret['result'] = True

    return ret