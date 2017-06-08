#!/bin/bash
j2objc_version=2.0.1
link=https://github.com/google/j2objc/releases/download/${j2objc_version}/j2objc-${j2objc_version}.zip
if [ ! -d "j2objc" ] || [ ! -d "j2objc/j2objc-${j2objc_version}" ]; then
    if [ -d "j2objc" ]; then
       rm -r j2objc
    fi
    mkdir j2objc
    for i in {1..5}
    do
        curl --range 0-199999999 -o j2objc-${j2objc_version}.zip.part1 -L  ${link}
        status=$?
        if [ "$status" -eq 0 ]; then
            break
        fi
    done
    for i in {1..5}
    do
        curl --range 200000000-399999999 -o j2objc-${j2objc_version}.zip.part2 -L ${link}
        if [ "$status" -eq 0 ]; then
            break
        fi
    done
    for i in {1..5}
    do
       curl --range 400000000-599999999 -o j2objc-${j2objc_version}.zip.part3 -L ${link}
       status=$?
       if [ "$status" -eq 0 ]; then
          break
       fi
    done
    for i in {1..5}
    do
       curl --range 600000000-799999999 -o j2objc-${j2objc_version}.zip.part4 -L ${link}
       status=$?
       if [ "$status" -eq 0 ]; then
          break
       fi
    done
    for i in {1..5}
    do
       curl --range 800000000-999999999 -o j2objc-${j2objc_version}.zip.part5 -L ${link}
       status=$?
       if [ "$status" -eq 0 ]; then
          break
       fi
    done
    for i in {1..5}
    do
       curl --range 1000000000- -o j2objc-${j2objc_version}.zip.part6 -L ${link}
       status=$?
       if [ "$status" -eq 0 ]; then
          break
       fi
    done

    cat j2objc-${j2objc_version}.zip.part? > j2objc-${j2objc_version}.zip
    rm j2objc-${j2objc_version}.zip.part?


    unzip -o -q j2objc-${j2objc_version}.zip
    mv j2objc-${j2objc_version} j2objc/j2objc-${j2objc_version}
fi

export J2OBJC_HOME=$(PWD)/j2objc/j2objc-${j2objc_version}

