UBOOT?=../u-boot
OPTEE?=../optee_os

all: copy-uboot copy-optee

.PHONY: copy-uboot copy-optee
copy-uboot:
	cp src/cyres_cert_chain.c $(UBOOT)/lib/cyres_cert_chain.c
	cp include/cyres_cert_chain.h $(UBOOT)/include/cyres_cert_chain.h

copy-optee:
	cp src/cyres_cert_chain.c $(OPTEE)/core/lib/libcyres/cyres_cert_chain.c
	cp include/cyres_cert_chain.h $(OPTEE)/core/lib/libcyres/include/cyres_cert_chain.h
