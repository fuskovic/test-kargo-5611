.PHONY: gitea
gitea:
	kargo apply -f gitea-test.yaml

.PHONY: gitlab
gitlab:
	kargo apply -f gitlab-test.yaml

.PHONY: gitea-wh
gitea-wh:
	k get projectconfigs gitea \
	-n gitea \
	-o=jsonpath='{.status.webhookReceivers[0].path}'

.PHONY: gitlab-wh
gitlab-wh:
	k get projectconfigs gitlab \
	-n gitlab \
	-o=jsonpath='{.status.webhookReceivers[0].path}'