LOCAL_PATH := $(call my-dir)

######################################################################

#            build libnetfiler-conntrack                    #

#####################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := libnetfilter_conntrack

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../libnfnetlink/include \
	$(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
	src/main.c \
	src/callback.c \
	src/conntrack/api.c \
	src/conntrack/snprintf.c \
	src/conntrack/snprintf_xml.c \
	src/conntrack/snprintf_default.c \
	src/expect/parse.c \
	src/expect/api.c \
	src/conntrack/parse.c \
	src/conntrack/setter.c \
	src/conntrack/getter.c \
	src/conntrack/labels.c

LOCAL_STATIC_LIBRARIES := libnfnetlink

include $(BUILD_STATIC_LIBRARY)
