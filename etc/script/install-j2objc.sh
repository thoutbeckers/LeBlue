#!/bin/bash
for i in {1..5}
do
    curl -OL https://github.com/google/j2objc/releases/download/${J2OBJC_VERSION}/j2objc-${J2OBJC_VERSION}.zip
    status=$?
    if [ "$status" -eq 0 ]; then
        break
    fi
    done
unzip -o -q j2objc-${J2OBJC_VERSION}.zip
cd j2objc-${J2OBJC_VERSION}; pwd; ls -l ; ./j2objcc --version; cd ..
export J2OBJC_HOME=$(PWD)/j2objc-${J2OBJC_VERSION}

