
# psof-lib

    usage: psof-lib [--old] lib-name [lib-name]
    
    example:
        # Find all procs with libc and libpthread loaded
        psof-lib c pthread
    
        # Find all procs with outdated versions of openssl loaded
        psof-lib --old ssl crypto

# dsh-psof-lib

    usage: dsh-psof-lib <dsh options> -- <psof-lib options>
    
    Transfers psof-lib to hosts described by dsh node selection options and then
    runs psof-lib with the given options on those nodes using dsh.

