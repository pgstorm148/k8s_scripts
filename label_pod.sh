for a in $(kubectl get pods -n namespace1 -o name); do \
  echo -e "\nPod ${a}"; \
  kubectl -n namespace1 describe ${a} | awk '/Labels:/,/Annotations/' | sed '/Annotations/d'; \
done