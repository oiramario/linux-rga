prefix=@CMAKE_INSTALL_PREFIX@
exec_prefix=${prefix}
libdir=${prefix}/@CMAKE_INSTALL_LIBDIR@
includedir=${prefix}/@CMAKE_INSTALL_INCLUDEDIR@

Name: librga
Description: The RGA driver userspace
Version: @VERSION@
Libs: -L${libdir} -lrga
Cflags: -I${includedir}
