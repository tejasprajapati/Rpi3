################################################################################
#
# helloworld
#
################################################################################

#HELLOWORLD_VERSION = 1.0
#HELLOWORLD_SOURCE = helloworld-$(HELLOWORLD_VERSION).tar.gz
HELLOWORLD_SITE_METHOD = local
HELLOWORLD_SITE = $(TOPDIR)/../../home/tejas/Desktop/helloworld/helloworld

define HELLOWORLD_BUILD_CMDS
	@echo $(TARGET_CC)
	$(MAKE) $(TARGER_CC) -C $(@D) all
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/helloworld $(TARGET_DIR)/etc
endef

$(eval $(generic-package))