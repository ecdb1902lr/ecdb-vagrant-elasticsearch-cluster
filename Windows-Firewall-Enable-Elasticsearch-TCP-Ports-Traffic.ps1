New-NetFirewallRule -DisplayName "Allow Elasticsearch Outbound Port 9200" -Direction Outbound -Protocol TCP -RemotePort 9200 -Action Allow
New-NetFirewallRule -DisplayName "Allow Elasticsearch Inbound Port 9200" -Direction Inbound -Protocol TCP -LocalPort 9200 -Action Allow
New-NetFirewallRule -DisplayName "Allow Elasticsearch Outbound Port 9300" -Direction Outbound -Protocol TCP -RemotePort 9300 -Action Allow
New-NetFirewallRule -DisplayName "Allow Elasticsearch Inbound Port 9300" -Direction Inbound -Protocol TCP -LocalPort 9300 -Action Allow