---
title:  "Building VTK with python bindings in linux (arch)"
date:   2016-03-05 13:48:00 +0530
categories: blogpost
tags: [guides, linux]
comments: true
slug: "buid-vtk"
---

I came across [VTK](http://www.vtk.org/) while building the docs for [DIPY](http://nipy.org/dipy/) and what I needed was the python bindings.<!--more-->

I use arch linux so installing from pacman is simple:

`bash sudo pacman -S vtk`

But this fails to install the python bindings properly and when you try: `python import vtk` it throws the error: `python ImportError: No module named vtkCommonPython`

That leaves no other way except to build VTK from source including the python wrapper, for the python version you want to use vtk in.

So here is the step by step procedure:
--------------------------------------

From [vtk website](http://www.vtk.org/) download the latest source tarball. For me it is VTK-7.0.0.tar.gz then extract it: `bash tar -xzvf VTK-7.0.0.tar.gz cd VTK-7.0.0`

Now configure cmake properly for building python wrappers:```bash
cmake .
ccmake .
``` This will give you an interface like: ![vtk configure screenshot](/assets/vtk-screenshot.jpg)
Now use your arrow keys to select the option you want to change and press enter to change value.

Toggle VTK_WRAP_PYTHON on.

Toggle VTK_WRAP_TCL on.

Change CMAKE_INSTALL_PREFIX to /usr

Change VTK_PYTHON_VERSION to 2.7 (or the version of python you want to use vtk in)

Now press [c] to configure

Then press [g] to generate and exit

Note: Sometimes you need to press c and g again.

Now run: ```bash
make
sudo make install
```

This will create a directory: Wrapping/Python

Now install the python bindings:
```bash
cd Wrapping/Python
make
sudo make install
```

Hopefully that should install vtk properly.

To check, in python run:
```bash
import vtk
vtk.__file__
```
This should give something like:

'/usr/lib/python2.7/site-packages/vtk/__init__.pyc'