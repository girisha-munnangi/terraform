resource "aws_route53_record" "www" {
    for_each = aws_instance.girisha
    zone_id = var.zone_id
    name = "${each.key}.${var.domain_name}" #mongodb.girisha.online
    type = "A"
    ttl = 1
    records = [each.value.private_ip]
    allow_overwrite = true
}


