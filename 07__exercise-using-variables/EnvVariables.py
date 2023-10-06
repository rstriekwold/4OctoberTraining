test = {'emailAddress': 'test@test.com',
        'somethingelse' : 'thisissomethingelse'
              }
Acceptance = {'emailAddress' : 'acceptance@acceptance.com',
              }

def get_variables(env):
    if env == 'test':
        return test
    elif env == 'Acceptance':
        return Acceptance
    else:
        # default variables
        return test