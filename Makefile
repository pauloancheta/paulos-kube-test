release:
	git tag ${TAG}
	git push origin head --tag
