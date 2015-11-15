#!/usr/bin/env python

import json
import os


def main():
    python_interp = os.popen('which python').read().rstrip()
    home = os.environ['HOME']

    print json.dumps({
        'group': {
            'hosts': [
                'localhost'
            ]
        },
        '_meta': {
            'hostvars': {
                'localhost': {
                    'ansible_python_interpreter': python_interp,
                    'ansible_user_dir': home
                    }
                }
            }
        })


if __name__ == '__main__':
    main()
