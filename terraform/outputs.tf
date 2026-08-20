output "devsecops_public_ip" {
  value = aws_instance.devsecops.public_ip
}

output "devsecops_private_ip" {
  value = aws_instance.devsecops.private_ip
}

output "k8s_master_private_ip" {
  value = aws_instance.k8s_master.private_ip
}

output "k8s_worker_private_ip" {
  value = aws_instance.k8s_worker.private_ip
}
