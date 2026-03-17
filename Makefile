.PHONY: whr
whr:
	k get projectconfigs kargo-demo \
	-n kargo-demo \
	-o=jsonpath='{.status.webhookReceivers}'