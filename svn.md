---
title: Svn
---

Using SVN

## Installing SVN

SVN (subversion) makes cooperative development easy.

First, you need subversion client installed in your system. In case of fedora/redhat, install it using yum:

```shell
yum install subversion
```

## Getting latest trunk

Create directory for openrrcp source, go there, issue `svn checkout`.  Something like this:

```shell
mkdir /usr/local/src/openrrcp
cd /usr/local/src/openrrcp
svn checkout http://openrrcp.svn.sourceforge.net/svnroot/openrrcp/trunk/
cd trunk
make
```

## Submitting patches

If you have found a bug and fixed it, just issue `svn diff` and submit output to maintainer nording at yandex.ru or
create ticket [here](http://dev.openrrcp.org.ru/newticket)
