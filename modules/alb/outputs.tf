output "alb_id" {
  description = "The ID and ARN of the load balancer we created"
  value       = aws_lb.this.id
}

output "alb_arn" {
  description = "The ID and ARN of the load balancer we created"
  value       = aws_lb.this.arn
}

