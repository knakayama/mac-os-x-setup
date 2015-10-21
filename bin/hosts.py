#!/usr/bin/env python

import json
import os


def main():
    python_interp = os.popen('which python').read().rstrip()

    print json.dumps({
        'group': {
            'hosts': [
                'localhost'
            ]
        },
        '_meta': {
            'hostvars': {
                'localhost': {
                    'ansible_python_interpreter': python_interp
                    }
                }
            }
        })


if __name__ == '__main__':
    main()
