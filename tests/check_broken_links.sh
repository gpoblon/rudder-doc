#!/bin/sh
# A recursion level of 2 is enough because all pages are referenced in the left tree.
# Add an exception for build.opensuse.org as they appear to have restrictions based on User-Agent
linkchecker -r 2 --check-extern --ignore-url="/_/img/favicon.ico" --ignore-url=^https://build.opensuse.org --ignore-url=^http://localhost --ignore-url=^https://your.rudder.server --ignore-url=^https://social.technet.microsoft.com build/sites/*/index.html
