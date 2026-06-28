resource "google_compute_instance" "default" {
    can_ip_forward             = false
    
    
    
    deletion_policy            = "DELETE"
    deletion_protection        = false
    description                = null
    
    enable_display             = false
    hostname                   = null
    
    key_revocation_action_type = "NONE"
    
    labels                     = {}
    machine_type               = "e2-medium"
    metadata                   = {
        "enable-osconfig" = "TRUE"
        "ssh-keys"        = <<-EOT
            taylorweb36:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBCaRHKSq0h7KVOr7INqqMRF8YGJQftb7Z/AahvRbJyHizVqBnEeHItJGdKUsJZej66hM5VWP8PXTt6k0Xvmluz0= google-ssh {"userName":"taylorweb36@gmail.com","expireOn":"2026-06-24T19:21:12+0000"}
            taylorweb36:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/W9MubDgvktgxIXq9mTHzZpLZhFRQMik/fPwrJE1ug/7w0rgNrmTuSrc4ADq7+gnIKmJMYq1bKZQdbkPjC6z63mGHATEyH96X3SWCKuBUPy/rba+s+MYEocX02XU85stss64qkl0FpcCaeI8rSZCEhN4c4pmg+CesdlZx9pZidW09vreGJN+DQa7T3qFPqQBJHx+vkUcoW0BF6zymdShMwykmy+GzSOnaU6CifCd4Lf5Inz+E2aWezwFoAawVjHS3T64ktuRmC5aEfqZT3kWwMnbqb6jyYxr6QHomjFMiKr/1azRYJtD5AYPmwHNFh90HW1y/s3HLK46c5h4hVru3 google-ssh {"userName":"taylorweb36@gmail.com","expireOn":"2026-06-24T19:21:18+0000"}
            taylorweb36:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBNX+DCTP1zWAbMv/rre3Cir72kJqtLeM82RyupLg2t4m2B4YOBK5QebPbFOJEpPDKNkf99ah6MOshwoY6JkUGkI= google-ssh {"userName":"taylorweb36@gmail.com","expireOn":"2026-06-24T19:22:36+0000"}
            taylorweb36:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAHoiiI1CPVPI0dIgwoTII6ZfHjTr3LXZ7BKfbmbiSuacewNFBu/POZLK4ZXqHSPkM7fr/vHGj8zCczhGs0RzTCV2wog2+5Ggcbd6cShg/SOzF/r67e3C5ZAfMFDL6vxZujfYgqHAseigneu75oRgmuVzIIikscMJBIBcTJ4PBT6o8Em6j2roHepUKoX8d+W+LRuNWw7dnmI/9CYlUnEJlXHcxUe9ADpAaOHfWZrpiSWIOJG36j5ul7ywzuprYPiaX8lzuqtwLvcHoGIQTy4ianvB4VxUDt16olay7DxJpJ+ymaCiCneGV+fEmxxnnb86sAiRBH6lhihto7UqzaNawLc= google-ssh {"userName":"taylorweb36@gmail.com","expireOn":"2026-06-24T19:22:42+0000"}
        EOT
    }
    
    min_cpu_platform           = null
    name                       = "practice"
    project                    = "project-79a0f092-e287-4dd8-b88"
    resource_policies          = []
    tags                       = []
    zone                       = "us-central1-a"

    boot_disk {
        auto_delete                     = true
        device_name                     = "practice"
        
        
        force_attach                    = false
        guest_os_features               = [
            "UEFI_COMPATIBLE",
            "VIRTIO_SCSI_MULTIQUEUE",
            "GVNIC",
            "SEV_CAPABLE",
            "SEV_SNP_CAPABLE",
            "SEV_LIVE_MIGRATABLE_V2",
            "IDPF",
        ]
        interface                       = null
        kms_key_self_link               = null
        mode                            = "READ_WRITE"
        source                          = "https://www.googleapis.com/compute/v1/projects/project-79a0f092-e287-4dd8-b88/zones/us-central1-a/disks/practice"

        initialize_params {
            architecture                = "X86_64"
            enable_confidential_compute = false
            image                       = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-13-trixie-v20260609"
            labels                      = {}
            provisioned_iops            = 0
            provisioned_throughput      = 0
            replica_zones               = []
            resource_manager_tags       = {}
            resource_policies           = [
                "https://www.googleapis.com/compute/v1/projects/project-79a0f092-e287-4dd8-b88/regions/us-central1/resourcePolicies/default-schedule-1",
            ]
            size                        = 10
            snapshot                    = null
            storage_pool                = null
            type                        = "pd-balanced"
        }
    }

    confidential_instance_config {
        confidential_instance_type  = null
        enable_confidential_compute = false
    }

    network_interface {
        igmp_query                  = null
        internal_ipv6_prefix_length = 0
        ipv6_access_type            = null
        ipv6_address                = null
        network                     = "https://www.googleapis.com/compute/v1/projects/project-79a0f092-e287-4dd8-b88/global/networks/default"
        network_attachment          = null
        network_ip                  = "10.128.0.2"
        nic_type                    = null
        parent_nic_name             = null
        queue_count                 = 0
        stack_type                  = "IPV4_ONLY"
        subnetwork                  = "https://www.googleapis.com/compute/v1/projects/project-79a0f092-e287-4dd8-b88/regions/us-central1/subnetworks/default"
        subnetwork_project          = "project-79a0f092-e287-4dd8-b88"
        

       
    }

    reservation_affinity {
        type = "ANY_RESERVATION"
    }

    scheduling {
        automatic_restart           = true
        availability_domain         = 0
        instance_termination_action = null
        min_node_cpus               = 0
        on_host_maintenance         = "MIGRATE"
        preemptible                 = false
        provisioning_model          = "STANDARD"
        termination_time            = null
    }

    service_account {
        email  = "836341622007-compute@developer.gserviceaccount.com"
        scopes = [
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring.write",
            "https://www.googleapis.com/auth/service.management.readonly",
            "https://www.googleapis.com/auth/servicecontrol",
            "https://www.googleapis.com/auth/trace.append",
        ]
    }

    shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
        enable_vtpm                 = true
    }
}