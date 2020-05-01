#!/bin/sh
# V2Ray new configuration
cat <<-EOF > /etc/v2ray/config.json
{
    "inbounds": [
        {
            "port": 80,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "8feb2bc6-fdfe-4e50-b9b6-08f87f69dcf6",
                        "alterId": 64
                    }
                ]
            },
            "streamSettings": {
                "network": "ws",
                "wsSettings":{
                    "path": "/pic"
                }
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
EOF
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
