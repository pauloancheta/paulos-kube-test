release:
	git tag ${APP_VERSION}
	git push origin head --tag

buildkite_release:
	rm .app_version && echo ${APP_VERSION} > .app_version
