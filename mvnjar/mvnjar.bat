rem install hppc-0.6.0.jar
call mvn install:install-file -Dfile=trilead-ssh2-1.0.0-build221.jar -DgroupId=com.trilead -DartifactId=trilead-ssh2 -Dversion=1.0.0-build221 -Dpackaging=jar -DgeneratePom=true
call mvn install:install-file -Dfile=trilead-ssh2-1.0.0-build217.jar -DgroupId=com.trilead -DartifactId=trilead-ssh2 -Dversion=1.0.0-build217 -Dpackaging=jar -DgeneratePom=true
pause
