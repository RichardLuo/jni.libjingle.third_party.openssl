##################################################################
# author: Richard Luo                      
# date:   2014-03-31 10:50:21
#                                                                
##################################################################

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/../../android_common.mk

LOCAL_MODULE := s_server

# LOCAL_SRC_FILES := \
# 	openssl/apps/app_rand.c \
# 	openssl/apps/apps.c \
# 	openssl/apps/asn1pars.c \
# 	openssl/apps/ca.c \
# 	openssl/apps/ciphers.c \
# 	openssl/apps/crl.c \
# 	openssl/apps/crl2p7.c \
# 	openssl/apps/dgst.c \
# 	openssl/apps/dh.c \
# 	openssl/apps/dhparam.c \
# 	openssl/apps/dsa.c \
# 	openssl/apps/dsaparam.c \
# 	openssl/apps/ecparam.c \
# 	openssl/apps/ec.c \
# 	openssl/apps/enc.c \
# 	openssl/apps/engine.c \
# 	openssl/apps/errstr.c \
# 	openssl/apps/gendh.c \
# 	openssl/apps/gendsa.c \
# 	openssl/apps/genpkey.c \
# 	openssl/apps/genrsa.c \
# 	openssl/apps/nseq.c \
# 	openssl/apps/ocsp.c \
# 	openssl/apps/openssl.c \
# 	openssl/apps/passwd.c \
# 	openssl/apps/pkcs12.c \
# 	openssl/apps/pkcs7.c \
# 	openssl/apps/pkcs8.c \
# 	openssl/apps/pkey.c \
# 	openssl/apps/pkeyparam.c \
# 	openssl/apps/pkeyutl.c \
# 	openssl/apps/prime.c \
# 	openssl/apps/rand.c \
# 	openssl/apps/req.c \
# 	openssl/apps/rsa.c \
# 	openssl/apps/rsautl.c \
# 	openssl/apps/s_cb.c \
# 	openssl/apps/s_client.c \
# 	openssl/apps/s_server.c \
# 	openssl/apps/s_socket.c \
# 	openssl/apps/s_time.c \
# 	openssl/apps/sess_id.c \
# 	openssl/apps/smime.c \
# 	openssl/apps/speed.c \
# 	openssl/apps/spkac.c \
# 	openssl/apps/version.c \
# 	openssl/apps/x509.c


LOCAL_SRC_FILES := \
	openssl/apps/apps.c \
	openssl/apps/s_cb.c \
	openssl/apps/s_socket.c \
	openssl/apps/app_rand.c \
	openssl/apps/ocsp.c \
	openssl/apps/ca.c \
	openssl/apps/s_server.c \


LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/openssl

LOCAL_CFLAGS +=	$(OPENSSL_CFLAGS)
# LOCAL_CFLAGS += -DMONOLITH
# LOCAL_CFLAGS += -DNON_MAIN
# LOCAL_CFLAGS += -DOPENSSL_NO_OCSP

# These flags omit whole features from the commandline "openssl".
# However, portions of these features are actually turned on.
LOCAL_CFLAGS += -DOPENSSL_NO_DTLS1


LOCAL_SHARED_LIBRARIES := \
	libopenssl \
	libutils \
	libcutils \
	libbinder \
	liblog \


LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := eng


include $(BUILD_EXECUTABLE)
