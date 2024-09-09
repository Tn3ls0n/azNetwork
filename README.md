****Configuring Azure Virtual Machines and Peerings****<br/>

**Network Topology:**<br/><br/>
![image](https://github.com/user-attachments/assets/209e61ce-a564-4515-a2b5-f7948afb4623)
<br/>

**Description:**
- Create non overlapping vnets and subnets.
- Create virtual machines within each vnet and subnet.
- Create transitive peering between sales vnet and marketing vnet.
- Create transitive peering between research and marketing vnet.
- Isolate communication between sales and research vnets.
<br/>

**How to run:** 
- Clone project
- Run start.ps1 using powershell
<br/>

**Testing:**
- RDP or SSH into vm of choice and ping ip of the vm that you want to test.
<br/>
