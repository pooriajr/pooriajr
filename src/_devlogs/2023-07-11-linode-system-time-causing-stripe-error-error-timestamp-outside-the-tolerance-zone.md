---
title: "Linode system time causing stripe webhook error 'Error: timestamp outside the tolerance zone'"
date: 2023-07-11 11:49:26 -0500
---

I was getting this error on prod, but not local, when trying to handle a webhook from stripe:

```
Error: timestamp outside the tolerance zone
```

I was using a Linode vps, and it turns out that the system time was off by a whole 8 minutes. I never messed with system time, and didn't even know this was possible.

Exciting adventures of running your own server.

I fixed it by running `apt-get install ntp` which seems to have caused the time to sync up properly.

I'm worried about it falling out of sync again, but at least I'll know why it's happening now.
