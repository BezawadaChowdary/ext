resource "aws_security_group" "adc_ext_security_group_tcp" {
  name        = "adc-sg-${var.team}-${var.service}-${var.environment}-tcp"
  description = "ADC Security Group managed by Terraform. Allows access from public IPs owned by ADC. https://git.ten-x.io/projects/TF/repos/adc_ext_security_group/browse"
  vpc_id      = "${var.vpc_id}"

  tags {
    Team        = "${var.team}"
    Environment = "${var.environment}"
    Service     = "${var.service}"
  }

  # Allow all tcp from our subnets
  ingress {
    from_port   = "${var.from_port}"
    to_port     = "${var.to_port}"
    protocol    = "tcp"
    cidr_blocks = ["${var.cidr_blocks}"]
  }

  # Allow all outbound TCP
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_security_group" "adc_ext_security_group_udp" {
  name        = "adc-sg-${var.team}-${var.service}-${var.environment}-udp"
  description = "ADC Security Group managed by Terraform. Allows access from public IPs owned by ADC. https://git.ten-x.io/projects/TF/repos/adc_ext_security_group/browse"
  vpc_id      = "${var.vpc_id}"

  tags {
    Team        = "${var.team}"
    Environment = "${var.environment}"
    Service     = "${var.service}"
  }

  # Allow all udp from our subnets
  ingress {
    from_port   = "${var.from_port}"
    to_port     = "${var.to_port}"
    protocol    = "udp"
    cidr_blocks = ["${var.cidr_blocks}"]
  }

  # Allow all outbound UDP
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "adc_ext_security_group_icmp" {
  name        = "adc-sg-${var.team}-${var.service}-${var.environment}-icmp"
  description = "ADC Security Group managed by Terraform. Allows access from public IPs owned by ADC. https://git.ten-x.io/projects/TF/repos/adc_ext_security_group/browse"
  vpc_id      = "${var.vpc_id}"

  tags {
    Team        = "${var.team}"
    Environment = "${var.environment}"
    Service     = "${var.service}"
  }

  # Allow inbound ICMP
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["${var.cidr_blocks}"]
  }

  # Allow outbound ICMP
  egress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["${var.cidr_blocks}"]
  }
}
