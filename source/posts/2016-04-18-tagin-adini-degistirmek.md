---
title: "Tag'in adını değiştirmek"
date: Apr 18, 2016 21:17
tags: tag
# subtitle: 
published: true
# cover: 
author:
  name: Ender Ahmet Yurt
  email: enderyurt@gmail.com
  link: http://enderahmetyurt.com
  bio: Full Stack Developer
---

Önceden belirlediğimiz bir tag'in adını değiştirmek istiyorsak,

```bash
git push origin <old-tag>:<new-tag> :<old-tag> && git tag -d <old-tag>
```

yapamamız yeterli olacaktır.