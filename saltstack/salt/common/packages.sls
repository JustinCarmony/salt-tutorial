# Example of a single package
git-core:
    pkg.installed

# Example of multiple packages
common-packages:
    pkg.installed:
        - names:
            - htop
            - strace
            - python-software-properties