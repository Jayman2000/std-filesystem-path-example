@ECHO ON
SETLOCAL ENABLEDELAYEDEXPANSION

IF DEFINED cdb (
	MKDIR build
	PUSHD build
	cmake ..
	cmake --build .
	PUSHD Debug
	"%cdb%" -lines -c "ld StdFilesystemPathExample; l+s" -o "!cd!\StdFilesystemPathExample.exe"
	POPD
	POPD
) ELSE (
	ECHO Please set the cdb environment variable to the path to cdb.exe, and then rerun this script.
)
