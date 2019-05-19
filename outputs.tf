output "adc_ext_security_group_id_tcp" {
  value       = "${aws_security_group.adc_ext_security_group_tcp.id}"
  description = "Security Group ID tcp"
}

output "adc_ext_security_group_id_udp" {
  value       = "${aws_security_group.adc_ext_security_group_udp.id}"
  description = "Security Group ID udp"
}

output "adc_ext_security_group_id_icmp" {
  value       = "${aws_security_group.adc_ext_security_group_icmp.id}"
  description = "Security Group ID icmp"
}

output "adc_ext_security_group_tcp_vpc_id" {
  value       = "${aws_security_group.adc_ext_security_group_tcp.vpc_id}"
  description = "VPC ID the security group tcp belongs to"
}

output "adc_ext_security_group_udp_vpc_id" {
  value       = "${aws_security_group.adc_ext_security_group_udp.vpc_id}"
  description = "VPC ID the security group udp belongs to"
}

output "adc_ext_security_group_icmp_vpc_id" {
  value       = "${aws_security_group.adc_ext_security_group_icmp.vpc_id}"
  description = "VPC ID the security group icmp belongs to"
}

output "ingress_rules_tcp" {
  value       = "${aws_security_group.adc_ext_security_group_tcp.ingress}"
  description = "Ingress rules for tcp security group"
}

output "egress_rules_tcp" {
  value       = "${aws_security_group.adc_ext_security_group_tcp.egress}"
  description = "Egress rules for tcp security group"
}

output "ingress_rules_icmp" {
  value       = "${aws_security_group.adc_ext_security_group_icmp.ingress}"
  description = "Ingress rules for icmp security group"
}

output "egress_rules_icmp" {
  value       = "${aws_security_group.adc_ext_security_group_icmp.egress}"
  description = "Egress rules for icmp security group"
}

output "ingress_rules_udp" {
  value       = "${aws_security_group.adc_ext_security_group_udp.ingress}"
  description = "Ingress rules for udp security group"
}

output "egress_rules_udp" {
  value       = "${aws_security_group.adc_ext_security_group_udp.egress}"
  description = "Egress rules for udp security group"
}
