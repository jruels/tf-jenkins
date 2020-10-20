# Install Jenkins
module "jenkins" {
  source  = "./modules/tf-gcp-jenkins"
  
# required variables
  jenkins_initial_password         = var.jenkins_initial_password
#  jenkins_initial_username         = var.jenkins_initial_username
  project_id		           = var.project_id
  region                           = var.region
  jenkins_instance_network         = var.jenkins_instance_network
  jenkins_instance_subnetwork      = var.jenkins_instance_subnetwork
  jenkins_instance_zone            = var.jenkins_instance_zone
  jenkins_workers_network          = var.jenkins_workers_network
  jenkins_workers_project_id       = var.jenkins_workers_project_id
  jenkins_workers_region           = var.jenkins_workers_region
}

output "jenkins_instance_name" {
  description = "The name of the running Jenkins instance"
  value       = module.jenkins.jenkins_instance_name
}

output "jenkins_instance_public_ip" {
  description = "The public IP of the Jenkins instance"
  value       = module.jenkins.jenkins_instance_public_ip
}

output "jenkins__initial_username" {
  description = "The initial username assigned to Jenkins" 
  value       = module.jenkins.jenkins_instance_initial_username
}

output "jenkins_initial_password" {
  description = "The initial password assigned to Jenkins"
  value       = module.jenkins.jenkins_instance_initial_password
}
