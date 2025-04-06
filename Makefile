default:
	git pull
	helm upgrade -i $(component) . -f env-$(env)/$(component).yml
debug:
	git pull
	helm upgrade -i $(component) . -f env-$(env)/$(component).yml --debug

dev:
	git pull
	for chart in frontend cart catalogue user payment shipping; do make env=dev component=$$chart; done