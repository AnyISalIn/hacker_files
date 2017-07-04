#!/bin/bash

function new_python_package () {
    if [[ ${1} == '' ]]; then
        return 2
    fi

    mkdir ${1}
    touch ${1}/__init__.py
}

function fetch_summer_blog () {
	pushd ~/codes/Python_Scripts &> /dev/null
        python fetch_summer_blog.py 2|lolcat
    popd &> /dev/null
}
