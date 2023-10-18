#!/bin/sh
service_name=yamas-agent

if systemctl is-active --quiet $service_name; then
  echo "$service_name is running"
else
  echo "$service_name is not running, startng $service_name..."
  systemctl start $service_name

  if [$? -eq 0]; then
    echo "$service_name started successfully"
  else
    echo "Failed to start $service_name"
  fi
fi
