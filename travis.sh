    env \
    | egrep -v '^(HOME|LOGNAME|PATH|PWD|SHELL|SHLVL|USER|_)=' \
    | egrep -v '^(Apple_PubSub_Socket_Render|DISPLAY|OLDPWD|SSH_AUTH_SOCK|TMPDIR|__CF_USER_TEXT_ENCODING)=' \
    | egrep -v '^(HUBOT|NVM|PYENV|RBENV|TERM|XPC)_' \
    | sort 
