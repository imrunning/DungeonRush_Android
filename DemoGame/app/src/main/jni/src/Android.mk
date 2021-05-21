LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL
SDL_IMAGE_PATH := ../SDL2_image
SDL_MIXER_PATH := ../SDL2_mixer
SDL_NET_PATH := ../SDL2_net
SDL_TTF_PATH := ../SDL2_ttf

LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SDL_PATH)/include
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SDL_IMAGE_PATH)
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SDL_MIXER_PATH)
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SDL_NET_PATH)
#LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(SDL_TTF_PATH)



# Add your application source files here...
LOCAL_SRC_FILES := 		\
	ai.c				\
	audio.c				\
	bullet.c			\
	game.c				\
	helper.c			\
	main.c				\
	map.c				\
	net.c				\
	player.c			\
	prng.c				\
	res.c				\
	render.c			\
	sprite.c			\
	storage.c			\
	types.c				\
	ui.c				\
	weapon.c			\
#	YourSourceHere.c	\



LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_mixer SDL2_net SDL2_ttf

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
