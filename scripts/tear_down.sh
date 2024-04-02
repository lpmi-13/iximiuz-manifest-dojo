for resource in deploy svc sts secrets configmap roles rolebinding sa networkpolicy pvc pv; do
  kubectl delete $resource -n dojo --all;
done

# remove the load-generator pods
kubectl delete deploy -n load --all
