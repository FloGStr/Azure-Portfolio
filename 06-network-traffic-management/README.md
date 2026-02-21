# Lab 06 – Implement Network Traffic Management

## Goal
Load balance public web traffic across multiple virtual machines and manage HTTP routing for different content endpoints.

## Architecture
### Load Balancer (L4)
![Load Balancer diagram](screenshots/load-balancer.png)

### Application Gateway (L7)
![Application Gateway diagram](screenshots/app-gateway.png)

## What I did
- **Task 1:** Provisioned the required infrastructure using a template (VNet/subnets/VMs).
- **Task 2 (Load Balancer):** Configured an **Azure Load Balancer (Layer 4)** with frontend IP, backend pool and rules to distribute traffic across VMs in the same VNet.
- **Task 3 (Application Gateway):** Configured an **Azure Application Gateway (Layer 7)** in a dedicated subnet to route HTTP requests to different backend VMs (e.g., images vs videos).

## Key concepts practiced
- Layer 4 (TCP/UDP) vs Layer 7 (HTTP/HTTPS) load balancing
- Backend pools, health probes and routing rules (concept)
- Request-based routing with Application Gateway (host/path concepts)
- WAF tier awareness (concept)

## Outcome
Demonstrated both L4 load distribution (Load Balancer) and L7 request routing (Application Gateway) for a multi-VM web scenario.
