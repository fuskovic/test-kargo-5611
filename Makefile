
.PHONY: gitea
gitea:
	@echo "updated"
	@kargo-darwin-arm64 apply -f gitea-test.yaml

.PHONY: gitea-wh
gitea-wh:
	@kubectl get projectconfigs gitea \
	-n gitea \
	-o=jsonpath='{.status.webhookReceivers[0].path}'

.PHONY: gitlab
gitlab:
	@kargo-darwin-arm64 apply -f gitlab-test.yaml

.PHONY: gitlab-wh
gitlab-wh:
	@kubectl get projectconfigs gitlab \
	-n gitlab \
	-o=jsonpath='{.status.webhookReceivers[0].path}'