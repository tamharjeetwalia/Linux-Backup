#!/bin/bash

# Enable the cronie service
systemctl enable cronie.service

# Start the cronie service
systemctl start cronie.service
