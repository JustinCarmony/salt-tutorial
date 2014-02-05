__virtualname__ = 'awesome'

def __virtual__():
    return __virtualname__

def ping():
    '''
    Awesomeness
    '''
    
    return __salt__['test.ping']()