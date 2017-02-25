# clearsilver

Docker Image packaging for ClearSilver http://www.clearsilver.net/

[![Travis][build-badge]][build]

## Guide

Suggest to create a bash script to run ClearSilver in container.

```
#!/bin/bash

if [ "$1" == "" ]; then
  docker run -v `pwd`:/root/src -it --rm -w /root/src zhengcan/clearsilver
else
  docker run -v `pwd`:/root/src --rm -w /root/src zhengcan/clearsilver python2 $*
fi
```

This script supports two kinds of usage:

- Run ClearSilver in interactive mode
  - $ /bin/bash <SCRIPT>
- Or run ClearSilver python edition directly
  - $ /bin/bash <SCRIPT> <PYTHON_SCRIPT> [args]

[build-badge]: https://travis-ci.org/zhengcan/clearsilver.svg?branch=master
[build]: https://travis-ci.org/zhengcan/clearsilver
