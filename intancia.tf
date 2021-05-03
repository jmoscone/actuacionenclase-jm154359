resource "aws_instance" "despliegue_actuacionenclase" {

  ami           = "ami-00e87074e52e6c9f9"
  instance_type = "t2.micro"
  key_name      = "key-prueba1"
 
  }
