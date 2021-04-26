resource "kubernetes_manifest" "clusterrole_clusterview" {
  provider = kubernetes-alpha
  manifest = {
    "apiVersion" = "rbac.authorization.k8s.io/v1"
    "kind"       = "ClusterRole"
    "metadata" = {
      "name" = "clusterview_test"
    }
    "rules" = [
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "configmaps",
          "endpoints",
          "persistentvolumeclaims",
          "persistentvolumeclaims/status",
          "pods",
          "replicationcontrollers",
          "replicationcontrollers/scale",
          "serviceaccounts",
          "services",
          "services/status",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "bindings",
          "events",
          "limitranges",
          "namespaces/status",
          "pods/log",
          "pods/status",
          "replicationcontrollers/status",
          "resourcequotas",
          "resourcequotas/status",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "",
        ]
        "resources" = [
          "namespaces",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "apps",
        ]
        "resources" = [
          "controllerrevisions",
          "daemonsets",
          "daemonsets/status",
          "deployments",
          "deployments/scale",
          "deployments/status",
          "replicasets",
          "replicasets/scale",
          "replicasets/status",
          "statefulsets",
          "statefulsets/scale",
          "statefulsets/status",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "autoscaling",
        ]
        "resources" = [
          "horizontalpodautoscalers",
          "horizontalpodautoscalers/status",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "batch",
        ]
        "resources" = [
          "cronjobs",
          "cronjobs/status",
          "jobs",
          "jobs/status",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "policy",
        ]
        "resources" = [
          "poddisruptionbudgets",
          "poddisruptionbudgets/status",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
      {
        "apiGroups" = [
          "networking.k8s.io",
        ]
        "resources" = [
          "ingresses",
          "ingresses/status",
          "networkpolicies",
        ]
        "verbs" = [
          "get",
          "list",
          "watch",
        ]
      },
    ]
  }
}