OBJ_MINIX=fs_minix.o
EXTRA=../p/grub/libgrubfs.a
CFLAGS+=-Igrub/include

STATIC_OBJ+=${OBJ_MINIX}
#STATIC_OBJ+=${EXTRA}
TARGET_MINIX=fs_minix.${EXT_SO}

ALL_TARGETS+=${TARGET_MINIX}

${TARGET_MINIX}: ${OBJ_MINIX}
	${CC} $(call libname,fs_minix) ${LDFLAGS} ${CFLAGS} -o ${TARGET_MINIX} ${OBJ_MINIX} ${EXTRA}
