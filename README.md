# dmenu

Fork of Suckless' [dmenu](https://tools.suckless.org/dmenu/)

## Building a deb package

Because dmenu is a simple program, `equivs-build` is used to build
the deb package, rather than the traditional `debuild` command.

Before building, ensure that the following packages are installed:

* equivs
* libx11-dev
* libxinerama-dev
* libxft-dev
* libfreetype6-dev

Then, from dmenu's directory, run (as a non-root user):

```
$ make deb
```

## Manual Install

### Requirements

In order to build dmenu you need the Xlib header files.

### Installation

Edit config.mk to match your local setup (dmenu is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dmenu
(if necessary as root):

```
make clean install
```

### Running dmenu

See the man page for details.

-----

#### _See LICENSE file for copyright and license details_
