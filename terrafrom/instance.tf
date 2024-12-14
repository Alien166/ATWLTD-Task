resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type 

  security_groups = [aws_security_group.web_sg.name] 
  key_name = "my-key-pair"

   user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install apache2 -y
              apt-get install mysql-server -y
              apt-get install php libapache2-mod-php php-mysql -y
              systemctl restart apache2
              systemctl start mysql
              systemctl enable mysql

              EOF

  tags = {
    Name = "WebServer" 
  }
}