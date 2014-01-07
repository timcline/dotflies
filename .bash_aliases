alias sudor="sudo -u root"
alias ll="ls -alG"

#GRADLE
export GRADLE_HOME=/Applications/gradle/gradle-1.8
export PATH="$PATH:$GRADLE_HOME/bin"
export GRADLE_OPTS="-Xdebug -XX:MaxPermSize=512m -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n"
alias gc="gradle clean build -x test"
alias gcb="gradle clean testClasses build -x test"
alias gt="gradle build"
alias gjr="gradle jettyRun"
alias gua="gradle uploadArchives"

#TOOLS
alias xml="xmllint --format -"
alias json="python -mjson.tool"
alias gitk="gitk 2>/dev/null &"

export VISUAL=vi
export EDITOR=vi

#Python
alias ipy=ipython
alias p8="pep8 --show-source"
