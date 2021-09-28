all: generate open

generate:
	@ echo "\033[1;37mGenerating project files\033[0m"
	@ (cd App; xcodegen -c && pod install)

open:
	@ open App/PROJECT_NAME.xcworkspace

clean:
	@ echo "\033[1;37mCleaning up project files\033[0m"
	@ rm -rf App/PROJECT_NAME.xc* App/Podfile.lock App/Pods
	@ find App/PROJECT_NAME/Resources/Generated ! -name '.gitkeep' -type f -exec rm -f {} +

remake: clean generate open
