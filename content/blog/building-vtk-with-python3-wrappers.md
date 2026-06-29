---
title:  "Building VTK with Python3 Wrappers"
date:   2016-07-13 11:40:14 +0530
categories: blogpost
comments: true
tags: [guides, linux]
slug: "building-vtk-with-python3-wrappers"
---

In my previous [post](/blog/buid-vtk/) I tried to give a short guide on how to build VTK with python wrappers. But then I tried to build it for python3 and found that my own guide does not work :P . So here is an updated version of the guide.
<!--more-->
I am using Arch Linux. But this should work for most linux distros.

## Fetch the source code of VTK

We have two options here

1. Download the latest release from [VTK Website](http://www.vtk.org/download/)
2. Clone the git repository from [gitlab](https://gitlab.kitware.com/vtk/vtk)

**We will clone the source from GitLab here**

`bash git clone https://gitlab.kitware.com/vtk/vtk.git`

This will create a directory named vtk

## Build VTK

We will build the source from a different folder.

```bash
mkdir vtkBuild
cd vtkBuild
```

Now configure cmake properly. This is the most important part.

`bash ccmake ../vtk`

We will see a screen like this:

![VTK configure screenshot 1](/assets/vtk-2-1.png)

Now press **c** to configure. After configuring several options should appear.

Press **t** to toggle to Advanced mode.

![VTK configure screenshot 2](/assets/vtk-2-2.png)

### Now change the following:

Toggle BUILD_TESTING on.

Toggle VTK_WRAP_PYTHON on.

Toggle VTK_WRAP_TCL on.

Change CMAKE_INSTALL_PREFIX to /usr

Change VTK_PYTHON_VERSION to 3.5 (your python version)

Change PYTHON_EXECUTABLE to your python executable. For me it was /usr/local/bin/python . You can check it by typing `which python` in your terminal.

Change PYTHON_INCLUDE_DIR to the directory where the python libraries are installed. In my case it is /usr/lib/python3.5/


### Configure and Build
Press **c** to configure.
Now press **g** to generate Makefile.

( You may have to press c and g again as it sometimes does not work properly )

Then install VTK and the Wrappers

```bash
make
sudo make install
cd Wrappers/Python
make
sudo make install
```

And that should be it :)

Check your vtk installation:
Open python and run
`python import vtk`

If that did not raise any error then you should be good to go!

Please leave a comment if you have any issues.

References:
[http://www.math.univ-paris13.fr/~cuvelier/mainsu35.html](http://www.math.univ-paris13.fr/~cuvelier/mainsu35.html)
