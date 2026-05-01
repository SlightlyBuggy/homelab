.PHONY: sync diff sync-portfolio sync-rain-barrel

sync:
	helmfile sync

diff:
	helmfile diff

sync-portfolio:
	helmfile sync -l name=hunter-portfolio

sync-rain-barrel:
	helmfile sync -l name=rain-barrel-automation
