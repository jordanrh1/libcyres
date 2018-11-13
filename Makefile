UBOOT?=../SolidRun-u-boot
OPTEE?=../optee_os

all: copy-uboot copy-optee

.PHONY: copy-uboot copy-optee
copy-uboot: $(UBOOT)/lib/cyres_cert_chain.c
copy-uboot: $(UBOOT)/include/cyres_cert_chain.h

$(UBOOT)/lib/cyres_cert_chain.c: src/cyres_cert_chain.c
	cp $< $@

$(UBOOT)/include/cyres_cert_chain.h: include/cyres_cert_chain.h
	cp $< $@

copy-optee: $(OPTEE)/core/lib/libcyres/cyres_cert_chain.c
copy-optee: $(OPTEE)/core/lib/libcyres/include/cyres_cert_chain.h

$(OPTEE)/core/lib/libcyres/cyres_cert_chain.c: src/cyres_cert_chain.c
	cp $< $@

$(OPTEE)/core/lib/libcyres/include/cyres_cert_chain.h: \
	include/cyres_cert_chain.h
	cp $< $@

