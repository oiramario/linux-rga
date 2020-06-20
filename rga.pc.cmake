prefix=@CMAKE_INSTALL_PREFIX@
exec_prefix=@CMAKE_INSTALL_PREFIX@
libdir=@CMAKE_INSTALL_FULL_LIBDIR@
includedir=@CMAKE_INSTALL_FULL_INCLUDEDIR@

Name: librga
Description: The RGA driver userspace
Version: @VERSION@
Libs: -L${libdir} -lrga
Cflags: -I${includedir}
