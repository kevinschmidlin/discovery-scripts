netstat -ano # Displays active TCP connections
arp -a
ipconfig /displaydns
Get-NetFirewallProfile | Format-Table Name, Enabled
Get-NetFirewallRule | select DisplayName, Enabled, Description
