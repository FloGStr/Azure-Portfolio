# Lab 05 – Implement Intersite Connectivity

## Goal
Enable and validate communication between segmented Azure virtual networks (core vs manufacturing) and understand routing control using custom routes.

## Architecture
![Architecture diagram](screenshots/architecture.png)

## What I did
- **Task 1:** Created a VM in the CoreServices virtual network.
- **Task 2:** Created a VM in the Manufacturing virtual network.
- **Task 3:** Tested connectivity using **Azure Network Watcher**.
- **Task 4:** Configured **VNet peering** between the virtual networks.
- **Task 5:** Tested connectivity using **Azure PowerShell**.
- **Task 6:** Created a **custom route (UDR)** to influence routing behavior.

## Key concepts practiced
- VNet isolation by default
- VNet peering for private connectivity over the Microsoft backbone
- Connectivity troubleshooting (Network Watcher, PowerShell)
- System routes vs user-defined routes (UDR)

## Outcome
Two segmented VNets were connected via peering, validated with troubleshooting tools, and routing behavior was adjusted using a custom route table.
