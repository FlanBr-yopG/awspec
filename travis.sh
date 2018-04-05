which comm || true
type comm || true

    comm -3 <(declare | sort) <(declare -f | sort) \
    | egrep -v '^(EUID|HOSTTYPE|MACHTYPE|OSTYPE|PIPESTATUS|PPID|UID)=' \
    | egrep -v '^(HOME|LOGNAME|PATH|PWD|SHELL|SHLVL|USER|_)=' \
    | egrep -v '^(Apple_PubSub_Socket_Render|DISPLAY|OLDPWD|SSH_AUTH_SOCK|TMPDIR|__CF_USER_TEXT_ENCODING)=' \
    | egrep -v '^(HUBOT|NVM|PYENV|RBENV|TERM|XPC)_' \
    | egrep -v '^(BASH|SHELL)_' \
    | sed -e 's,/home/travis,/rootfs/home/travis,g' \
    | sort    

env \
    | egrep -v '^(HOME|LOGNAME|PATH|PWD|SHELL|SHLVL|USER|_)=' \
    | egrep -v '^(Apple_PubSub_Socket_Render|DISPLAY|OLDPWD|SSH_AUTH_SOCK|TMPDIR|__CF_USER_TEXT_ENCODING)=' \
    | egrep -v '^(HUBOT|NVM|PYENV|RBENV|TERM|XPC)_' \
    | sort 
