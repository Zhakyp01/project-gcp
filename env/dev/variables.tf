// Write to "default" the project name where the resource will created
variable "project_id" {
  type    = string
  default = "my-project-test-382316"
}

// Write to "default" the path to your credentials file
variable "credentials_file_path" {
  type    = string
  default = "creds.json"
}

// Write to "default" the region where by default your resource will created
variable "region" {
  type    = string
  default = "us-west1"
}


// Write to "default" the zone where by default your resource will will created
variable "main_zone" {
  type    = string
  default = "us-west1-b"
}

# variable "private_key" {
  
# }

#============================= SUBNETWORKS VARIABLES ===================================

#--------------------------------- PRESENTATION ----------------------------------------
variable "presentation_ip_range" {
  description = "IP range of Presentation subnetwork"
  type        = string
  default     = "10.100.0.0/16"
}

#--------------------------------- APPLICATION -----------------------------------------
variable "application_ip_range" {
  description = "IP range of Application subnetwork"
  type        = string
  default     = "10.101.0.0/16"
}
#----------------------------------- DATABASE ------------------------------------------
variable "database_ip_range" {
  description = "IP range of Database subnetwork"
  type        = string
  default     = "10.102.0.0/16"
}


#================================== ROUTES VARIABLE ====================================
variable "igw_destination" {
  description = "The destination range of outgoing packets that this route applies to. Only IPv4 is supported"
  type        = string
  default     = "0.0.0.0/0"
}




#============================ FIREWALL RULES VARIABLES =================================

#------------------------------ PRESENTATION FIREWALL ----------------------------------
variable "presentation_firewall_ranges" {
  description = "If direction <INGRESS> are specified, the firewall will apply only to traffic that has source IP address in these ranges. If direction <EGRESS>  are specified, the firewall will apply only to traffic that has destination IP address in these ranges."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

#------------------------------ APPLICATION FIREWALL -----------------------------------
variable "application_firewall_ranges" {
  description = "If direction <INGRESS> are specified, the firewall will apply only to traffic that has source IP address in these ranges. If direction <EGRESS>  are specified, the firewall will apply only to traffic that has destination IP address in these ranges."
  type        = list(string)
  default     = ["10.100.0.0/16"]
}


#------------------------------ DATABASE FIREWALL --------------------------------------
variable "database_firewall_ranges" {
  description = "If direction <INGRESS> are specified, the firewall will apply only to traffic that has source IP address in these ranges. If direction <EGRESS>  are specified, the firewall will apply only to traffic that has destination IP address in these ranges."
  type        = list(string)
  default     = ["10.101.0.0/16"]
}



