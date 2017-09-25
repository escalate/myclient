#!/bin/bash

wget -q https://raw.githubusercontent.com/paulRbr/ansible-makefile/84230ccbd1521d2eea64f122f4a336f988a5d570/Makefile -O Makefile

if [ ! -f "pass.sh" ]; then
    echo -e "#!/bin/bash\ncat path/to/secret" > pass.sh
fi
