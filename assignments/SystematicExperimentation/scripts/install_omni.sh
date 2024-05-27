
# set PATH so it includes geni software if it exists

#PATH_OMNIDIR='/usr/local/bin/geni-tools-2.11'

#tar -xvf './v2.11.tar.gz'
#sudo mv './geni-tools-2.11/' '/usr/local/bin/' 

#PATH_OMNIDIR='/usr/local/bin/geni-tools-2.11'
#if [ -d "$PATH_OMNIDIR/src" ] ; then
#    PATH="$PATH_OMNIDIR/src:$PATH_OMNIDIR/examples:$PATH"
#    export PYTHONPATH="$PATH_OMNIDIR/src:$PYTHONPATH" 
#fi

#alias omni='omni.py'
#alias omni-configure='omni-configure.py'
#alias readyToLogin='readyToLogin.py'
#alias clear-passphrases='clear-passphrases.py'
#alias stitcher='stitcher.py'
#alias remote-execute='remote-execute.py'
#alias addMemberToSliceAndSlivers='addMemberToSliceAndSlivers.py'
#
#!/bin/bash

# Define the path to the target directory
PATH_OMNIDIR='/usr/local/bin/geni-tools-2.11'

# Set up environment variables if the src directory exists
if [ -d "$PATH_OMNIDIR/src" ]; then
    PATH="$PATH_OMNIDIR/src:$PATH_OMNIDIR/examples:$PATH"
    export PYTHONPATH="$PATH_OMNIDIR/src:$PYTHONPATH"
fi

# Set up aliases for the geni tools
alias omni='python2.7 $PATH_OMNIDIR/src/omni.py'
alias omni-configure='python2.7 $PATH_OMNIDIR/src/omni-configure.py'
alias readyToLogin='python2.7 $PATH_OMNIDIR/examples/readyToLogin.py'
alias clear-passphrases='python2.7 $PATH_OMNIDIR/src/clear-passphrases.py'
alias stitcher='python2.7 $PATH_OMNIDIR/src/stitcher.py'
alias remote-execute='python2.7 $PATH_OMNIDIR/examples/remote-execute.py'
alias addMemberToSliceAndSlivers='python2.7 $PATH_OMNIDIR/examples/addMemberToSliceAndSlivers.py'

# Export PATH so it is available in the current session
export PATH