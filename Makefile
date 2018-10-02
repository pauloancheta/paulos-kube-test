release:
	git tag ${TAG}
	git push origin head --tag

buildkite_release:
	rm .app_version && echo "${TAG}" > .app_version
