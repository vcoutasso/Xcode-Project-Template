generate:
	@ echo "\033[1;37mGenerating project files\033[0m"
	@ (cd App; xcodegen -c && pod install)

open:
	@ open App/PROJECT_NAME.xcodeproj
