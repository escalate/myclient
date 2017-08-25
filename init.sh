#!/bin/bash

wget -q https://raw.githubusercontent.com/escalate/ansible-makefile/master/Makefile -O Makefile

if [ ! -f "pass.sh" ]; then
    echo -e "#!/bin/bash\ncat path/to/secret" > pass.sh
fi
