.PHONY: sync diff apply-manifests sync-portfolio sync-rain-barrel

apply-manifests:
	kubectl apply -f manifests/

sync: apply-manifests
	helmfile sync

diff:
	helmfile diff

sync-portfolio:
	helmfile sync -l name=hunter-portfolio

sync-rain-barrel:
	helmfile sync -l name=rain-barrel-automation
