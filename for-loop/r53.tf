/* resource "aws_route53_record" "www" {
    count =4
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_id}" #mongobd.giribantudevops.site
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop[count.index].private_ip]
} */

resource "aws_route53_record" "www" {
    for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_id}" #mongobd.giribantudevops.site
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
}