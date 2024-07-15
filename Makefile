project:
	if [ `pgrep -x Xcode` ]; then \
		killall -9 Xcode; \
	fi
	mise install
	tuist install
	tuist generate --no-open

resource:
	if [ `pgrep -x Xcode` ]; then \
		killall -9 Xcode; \
	fi
	tuist generate --no-open

XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
XCODE_USER_SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets

APP_TEMPLATES_DIR=Template/App

install:
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)

	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(APP_TEMPLATES_DIR)
	cp -R $(APP_TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall:
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(APP_TEMPLATES_DIR)
