alias sudor="sudo -u root"
alias ll="ls -alG"

#Java
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home

#GRADLE
#export GRADLE_HOME=/Applications/gradle/gradle-2.12
#export GRADLE_HOME=/Applications/gradle/gradle-1.8
export GRADLE_HOME=/Applications/gradle/gradle-3.1
export PATH="$PATH:$GRADLE_HOME/bin"
export GRADLE_OPTS="-Xdebug -XX:MaxPermSize=512m -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n"
alias gc="./gradlew clean build -x test"
alias gcb="./gradlew clean testClasses build -x test"
alias gt="./gradlew build"
alias gjr="./gradlew jettyRun"
alias gua="./gradlew uploadArchives"
alias gw='./gradlew'

#TOOLS
alias xml="xmllint --format -"
alias json="python -mjson.tool"
alias gitk="gitk 2>/dev/null &"

export VISUAL=vi
export EDITOR=vi

#Python
alias ipy=ipython
alias p8="pep8 --show-source"

#Maven
export M2_HOME="/usr/local/apache-maven/apache-maven-3.2.1"
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

#PYTHON PATH
export PYTHONPATH=$HOME/dev-repos/cloud-identity-ops:$PYTHONPATH

#Saxon
export SAXON_HOME=$HOME/saxon-license

#Scala
export SCALA_HOME=/usr/local/share/scala-2.12.0
export  PATH=$PATH:$SCALA_HOME/bin
