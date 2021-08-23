generate:
	@ echo "\033[1;37mGenerating project files\033[0m"
	@ echo "\033[1;37mGenerating project files\033[0m"
	@ (cd App; xcodegen -c && pod install)

open:
	@ open App/PROJECT_NAME.xcodeproj

clean:
	@ echo "\033[1;37mCleaning up project files\033[0m"
	@ rm -rf App/PROJECT_NAME.xc* App/Podfile.lock App/Pods
	@ find App/Resources/Generated ! -name '.gitkeep' -type f -exec rm -f {} +
