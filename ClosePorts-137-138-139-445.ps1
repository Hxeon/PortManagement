Write-Host "This script closes ports 137, 138, 139 and 445. Please note that DHCP may cease functioning properly if you run this script. You are advised to use the 'OpenPorts' script I made to reverse this if you use this script in error. Press Enter to continue or Ctrl+C to abort."


Write-Host "CLOSING IN/OUT TCP PORTS 137, 138, 139 AND 445..."
New-NetFirewallRule -DisplayName "PORT 137 INBOUND TCP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol tcp -LocalPort 137 -RemotePort 137
New-NetFirewallRule -DisplayName "PORT 137 OUTBOUND TCP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol tcp -LocalPort 137 -RemotePort 137
New-NetFirewallRule -DisplayName "PORT 138 INBOUND TCP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol tcp -LocalPort 138 -RemotePort 138
New-NetFirewallRule -DisplayName "PORT 138 OUTBOUND TCP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol tcp -LocalPort 138 -RemotePort 138
New-NetFirewallRule -DisplayName "PORT 139 INBOUND TCP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol tcp -LocalPort 139 -RemotePort 139
New-NetFirewallRule -DisplayName "PORT 139 OUTBOUND TCP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol tcp -LocalPort 139 -RemotePort 139
New-NetFirewallRule -DisplayName "PORT 445 INBOUND TCP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol tcp -LocalPort 445 -RemotePort 445
New-NetFirewallRule -DisplayName "PORT 445 OUTBOUND TCP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol tcp -LocalPort 445 -RemotePort 445

Write-Host "CLOSING IN/OUT UDP PORTS 137, 138, 139 AND 445..."
New-NetFirewallRule -DisplayName "PORT 137 INBOUND UDP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol udp -LocalPort 137 -RemotePort 137
New-NetFirewallRule -DisplayName "PORT 137 OUTBOUND UDP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol udp -LocalPort 137 -RemotePort 137
New-NetFirewallRule -DisplayName "PORT 138 INBOUND UDP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol udp -LocalPort 138 -RemotePort 138
New-NetFirewallRule -DisplayName "PORT 138 OUTBOUND UDP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol udp -LocalPort 138 -RemotePort 138
New-NetFirewallRule -DisplayName "PORT 139 INBOUND UDP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol udp -LocalPort 139 -RemotePort 139
New-NetFirewallRule -DisplayName "PORT 139 OUTBOUND UDP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol udp -LocalPort 139 -RemotePort 139
New-NetFirewallRule -DisplayName "PORT 445 INBOUND UDP CLOSED" -Action Block -Direction Inbound -Profile Any -Protocol udp -LocalPort 445 -RemotePort 445
New-NetFirewallRule -DisplayName "PORT 445 OUTBOUND UDP CLOSED" -Action Block -Direction Outbound -Profile Any -Protocol udp -LocalPort 445 -RemotePort 445

Write-Host "Done!"