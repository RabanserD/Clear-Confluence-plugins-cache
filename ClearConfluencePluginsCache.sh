#!/bin/bash
#Stop Confluence
/opt/atlassian/confluence/bin/stop-confluence.sh

#Remove directories to repair confluence (clears Confluence plugins cache)
rm -rf /var/atlassian/application-data/confluence/bundled-plugins
rm -rf /var/atlassian/application-data/confluence/plugins-cache
rm -rf /var/atlassian/application-data/confluence/plugins-osgi-cache
rm -rf /var/atlassian/application-data/confluence/plugins-temp

#Start-Confluence
/opt/atlassian/confluence/bin/start-confluence.sh
