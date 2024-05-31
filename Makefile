.PHONY: apk aab pod tran fix clean get

apk:
	flutter build apk

aab:
	flutter build appbundle

pod:
	cd ios && pod install

pod_update:
	cd ios && pod update

tran:
	flutter gen-l10n

fix:
	dart fix --apply

clean:
	flutter clean

get: clean
	flutter pub get
	
splash:
	dart run flutter_native_splash:create --path=./flutter_native_splash.yaml

