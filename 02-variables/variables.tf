variable "ami_id" {
    type = string
    default = "ami-0055977a6e828a4f4"
    description = "AMI ID of the Instance"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "Instance type of EC2"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "roboshop-mongodb"
        Environmet = "dev"
        terraform = "true"
        project = "terraform"
        component = "mongodb"
    }
}

variable "from_port" {
    type = number
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}