
## ADC AWS Security Group module

A module to provide AWS security group access from our corporate networks to AWS

Reference: https://wiki.auction.com/pages/viewpage.action?pageId=16883281 

## Usage

```
module "adc_ext_security_group" {
  source                = "git::ssh://git@git.ten-x.io/tf/adc_ext_security_group.git?ref=v0.0.2"
  team                  = "adc-sre"
  environment           = "dev"
  service               = "nginx-cloudhsm-offload"
  vpc_id                = "vpc-3a7b4e5f"
  from_port             = "443"
  to_port               = "443"
}
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cidr_blocks | Network CIDR Blocks owned by ADC. Reference: https://wiki.auction.com/pages/viewpage.action?pageId=16883281 | list | `<list>` | no |
| environment | The environment this sg is a part of, ie dev, stage, prod | string | `unknown` | no |
| from_port | The networking port to start accept range from | string | `0` | no |
| service | The service name this is applicable to, E.g. resi-fe-btbproperty | string | `unknown` | no |
| team | The team this is applicable to, E.g. adc-sre | string | `unknown` | no |
| to_port | The networking port to end accept range | string | `65535` | no |
| vpc_id | The VPC ID to place this security group | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| adc_ext_security_group_id_tcp | Security Group ID tcp |
| adc_ext_security_group_id_udp | Security Group ID udp |
| adc_ext_security_group_id_icmp | Security Group ID icmp |
| adc_ext_security_group_tcp_vpc_id | VPC ID the security group tcp belongs to |
| adc_ext_security_group_udp_vpc_id | VPC ID the security group udp belongs to |
| adc_ext_security_group_icmp_vpc_id | VPC ID the security group icmp belongs to |
| ingress_rules_tcp | Ingress rules for tcp security group |
| egress_rules_tcp | Egress rules for tcp security group |
| ingress_rules_udp | Ingress rules for udp security group |
| egress_rules_udp | Egress rules for udp security group |
| ingress_rules_icmp | Ingress rules for icmp security group |
| egress_rules_icmp | Egress rules for icmp security group |






