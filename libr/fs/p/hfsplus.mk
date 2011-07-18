OBJ_HFSPLUS=fs_hfsplus.o
EXTRA=../p/grub/libgrubfs.a
CFLAGS+=-Igrub/include

STATIC_OBJ+=${OBJ_HFSPLUS}
#STATIC_OBJ+=${EXTRA}
TARGET_HFSPLUS=fs_hfsplus.${EXT_SO}

ALL_TARGETS+=${TARGET_HFSPLUS}

${TARGET_HFSPLUS}: ${OBJ_HFSPLUS}
	${CC} $(call libname,fs_hfsplus) ${LDFLAGS} ${CFLAGS} -o ${TARGET_HFSPLUS} ${OBJ_HFSPLUS} ${EXTRA}
