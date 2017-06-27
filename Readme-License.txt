March 24, 2004

Readme and License for the JavaServer Faces book (O'Reilly) example package
---------------------------------------------------------------------------

This package contains all examples and the source code for all Java
classes described in the JavaServer Faces book (O'Reilly) by Hans Bergsten.

The examples are located in the "jsfbook" directory in a format supported 
by most Servlet 2.2 compliant containers (the Web Application Archive 
structure as an open file system structure). For the Tomcat container, 
all you have to do to install it is to copy the directory under Tomcat's 
"webapps" directory and restart the server.

The "jsfbook/WEB-INF/lib" directory contains binary versions of all
example classes in two JAR files: custom_jsf_lib_1_x.jar and
sample_app_1_x.jar. The first contains all classes and configuration
information for the generic JSF components, renderers, listeners, validators 
and view handlers described in the book. You can use these classes as 
described in the book in any JSF application by dropping the JAR file in 
the application's WEB-INF/lib directory. The second JAR file contains
all classes for the example application.

The "src" directory contains all source code for the Java classes (beans, 
custom components, etc.) used in the examples, along with an Ant build
file for compiling all classes and building the JAR files.

You can use the examples and the source code any way you want, but
please include a reference to where it comes from if you use it in
your own products or services. Also note that this software is
provided by the author "as is", with no expressed or implied warranties. 
In no event shall the author be liable for any direct or indirect
damages arising in any way out of the use of this software.

In addition to the code developed for this book, binary versions of 
classes developed by the Apache Software Foundation (http://www.apache.org/)
and the JSF Reference Implementation developed by Sun Microsystems, Inc.
(http://www.sun.com/). You're allowed to use these classes, but please
see the license agreement for this software (found in the same directory
as this file) for details.
