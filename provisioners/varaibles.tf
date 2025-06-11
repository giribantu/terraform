variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description ="roboshop instance in rhel"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tag" {
    default = {
        Name ="hello world"
        pupose="variable demo"
    }
}

variable "sg_name" {
  default = "var file allow_all"
}
variable "sg_description" {
  default = "varaibles sg description"
}

variable "from_port" {
  default = 0
}
variable "to_port" {
  default = 0
}
variable "cidr_blocks" {
    type = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
 default =  {
    Name ="allow_all"
 }
}