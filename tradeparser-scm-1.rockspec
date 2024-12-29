package = 'tradeparser'
version = 'scm-1'

source  = {
    url    = 'git+https://github.com/first-leon/tradeparser.git';
    branch = 'master';
}

description = {
    summary  = "Fast specialized XML trade parser";
    homepage = 'https://github.com/tarantool/tradeparser.git';
    maintainer = "Konstantin Nazarov <mail@kn.am>";
    license  = 'BSD2';
}

external_dependencies = {
    TARANTOOL = {
        header = 'tarantool/module.h';
    };
}

dependencies = {
   "lua >= 5.1",
}

build = {
    type = 'cmake';
    variables = {
        CMAKE_BUILD_TYPE="RelWithDebInfo";
        TARANTOOL_INSTALL_LIBDIR="$(LIBDIR)";
        TARANTOOL_INSTALL_LUADIR="$(LUADIR)";
    };
}
