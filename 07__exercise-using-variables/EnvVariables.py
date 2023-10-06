test = {'emailAddress': 'test@test.com',
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