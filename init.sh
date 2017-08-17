#!/bin/bash

if [ ! -f "Makefile" ]; then
    wget -q https://raw.githubusercontent.com/escalate/ansible-makefile/master/Makefile
fi

if [ ! -f "pass.sh" ]; then
    echo -e "#!/bin/bash\ncat path/to/secret" > pass.sh
fi
