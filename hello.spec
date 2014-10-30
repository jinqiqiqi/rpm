%define debug_package	%{nil}
%define _tmppath		/var/tmp
%define name			NAME
%define release			1
%define version			VERSION
%define buildroot		%{_tmppath}/%{name}-buildroot


Summary:    hello world rpm package
Name:       hello
Version:    0.1
Release:    1
Source:     $RPM_SOURCE_DIR/hello-0.1.tar.gz
License:    GPL
Packager:   EricKinch
Group:      Application
URL:        http://www.erickinch.com

%description
This is a software for making your life more beautiful!

%prep
%setup -q

%build
gcc -o hello hello.c

%install
install -m 755 hello /opt/bin/hello

%files
/opt/bin/hello
