/* resource "aws_instance" "web01" {
  ami           = var.ami-var
  instance_type = var.instance_type-var
  subnet_id     = aws_subnet.sub1.id
  user_data     = file("tomcatinstall.sh")
  depends_on = [
    aws_internet_gateway.gateway
  ]
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "project-tomcat-terr"
  }
} */

resource "aws_instance" "web01" {
  ami           = var.ami-var
  instance_type = var.instance_type-var
  subnet_id     = aws_subnet.sub1.id
  user_data     = file("dockerinstall.sh")
  depends_on = [
    aws_internet_gateway.gateway
  ]
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "project-docker-terr"
  }
}

