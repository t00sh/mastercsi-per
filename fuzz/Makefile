.PHONY: all clean distclean

RADARE2_URL = "https://github.com/radare/radare2.git"

# Radare2 without ASAN
RADARE2 = $(shell realpath "radare2-src")
RADARE2_INSTALL_PATH = $(shell realpath "./radare2-install")
RADARE2_DONE = ${RADARE2}/.done

# Radare2 with ASAN
RADARE2_ASAN = $(shell realpath "radare2-src-asan")
RADARE2_ASAN_INSTALL_PATH = $(shell realpath "./radare2-asan-install")
RADARE2_ASAN_DONE = ${RADARE2_ASAN}/.done

# AFL
AFL_PATH = $(shell realpath "afl-latest")
AFL_TAR = afl-latest.tgz
AFL_URL = http://lcamtuf.coredump.cx/afl/releases/${AFL_TAR}
AFL_DONE = ${AFL_PATH}/.done
AFL_CC = ${AFL_PATH}/afl-gcc
AFL_CXX = ${AFL_PATH}/afl-g++


all: ${RADARE2_DONE} ${RADARE2_ASAN_DONE} ${AFL_DONE}
	cd ${AFL_PATH} && make

	cd $(RADARE2) && \
	   CC=${AFL_CC} CXX=${AFL_CXX} \
	   ./sys/user.sh --install-path ${RADARE2_INSTALL_PATH}

	cd ${RADARE2_ASAN} && \
	   CC=${AFL_CC} CXX=${AFL_CXX} AFL_USE_ASAN=1 \
	   ./sys/user.sh --install-path ${RADARE2_ASAN_INSTALL_PATH}

${RADARE2_DONE}:
	git clone ${RADARE2_URL} ${RADARE2}
	touch ${RADARE2_DONE}

${RADARE2_ASAN_DONE}:
	git clone ${RADARE2_URL} ${RADARE2_ASAN}
	touch ${RADARE2_ASAN_DONE}

${AFL_DONE}:
	wget ${AFL_URL} -O ${AFL_TAR}
	mkdir -p ${AFL_PATH}
	tar -zxvf ${AFL_TAR} -C ${AFL_PATH} --strip-components=1
	touch ${AFL_DONE}

clean:
	-cd ${RADARE2} && make clean
	-cd ${RADARE2_ASAN} && make clean

distclean:
	rm -rf ${RADARE2}
	rm -rf ${RADARE2_ASAN}
	rm -rf ${AFL_PATH}
	rm -rf ${AFL_TAR}
	rm -rf ${RADARE2_INSTALL_PATH}
	rm -rf ${RADARE2_ASAN_INSTALL_PATH}
