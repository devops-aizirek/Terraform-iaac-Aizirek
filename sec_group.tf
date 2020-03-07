resource "aws_security_group" "allow_tls" { 
  name        = "allow_tls" 
  description = "Allow TLS inbound traffic" 
  vpc_id      = "" 

  ingress { 
    from_port   = 443 
    to_port     = 443 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

}
  ingress { 
    from_port   = 80 
    to_port     = 80
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   
 

  ingress { 
    from_port       = 22 
    to_port         = 22
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 

tags = {
    name =
}
 