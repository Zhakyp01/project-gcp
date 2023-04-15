# data "template_file" "script" {
#   depends_on = [
#     module.google_kubernetes_cluster
#   ]
#   template = "${file("${path.module}/startup-script.tpl")}"
#   vars = {
#     # cluster_name = "${module.google_kubernetes_cluster.name}"
#     # zone       = "${module.google_kubernetes_cluster.zone}"
#     project_id = "${module.google_kubernetes_cluster.project_id}"
#     # dbpassword   = "${var.dbpassword}"
#     # dbusername   = "${var.dbusername}"
#     # db_endpoint  = "${module.rds.db_endpoint}"
#     # runner_token = "${var.runner_token}"
#   }
# }