alias sudor="sudo -u root"
alias ll="ls -alGh"

#Java
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home

#GRADLE
#export GRADLE_HOME=/Applications/gradle/gradle-1.8
#export GRADLE_HOME=/Applications/gradle/gradle-2.12
#export GRADLE_HOME=/Applications/gradle/gradle-3.1
#export GRADLE_HOME=/Applications/gradle/gradle-3.3
export GRADLE_HOME=/Applications/gradle/gradle-3.5.1
#export GRADLE_HOME=/Applications/gradle/gradle-4.0.1
export PATH="$PATH:$GRADLE_HOME/bin"
export GRADLE_OPTS="-Xdebug -XX:MaxPermSize=512m -Xrunjdwp:transport=dt_socket,server=y,suspend=n"

alias gc="./gradlew clean build -x test"
#alias gcb="./gradlew clean testClasses build -x test"
alias gcb='./gradlew clean testClasses build -x commitTest -x nonCommitTest -x test -x commonTest'
alias gw='./gradlew'
alias gar='./gradlew appRunDebug'

#TOOLS
alias xml="xmllint --format -"
alias json="python -mjson.tool"
#alias json="jq"
alias gitk="gitk 2>/dev/null &"

export VISUAL=vi
export EDITOR=vi

#Python
alias ipy=ipython
alias p8="pep8 --show-source"

#Maven
#export M2_HOME="/usr/local/apache-maven/apache-maven-3.2.1"
export M2_HOME="/usr/local/apache-maven/apache-maven-3.6.3"
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

#PYTHON PATH
export PYTHONPATH=$HOME/dev-repos/cloud-identity-ops:$PYTHONPATH
export PATH=/usr/local/opt/openssl/bin/:$PATH

#Saxon
export SAXON_HOME=$HOME/saxon-license

#Scala
export SCALA_HOME=/usr/local/share/scala-2.12.0
export  PATH=$PATH:$SCALA_HOME/bin

# Docker
alias dc='docker-compose'
alias dcu='docker-compose kill; docker-compose rm --force; docker-compose up -d'
alias dcum='docker-compose -f docker-compose.minimal.yml kill; docker-compose -f docker-compose.minimal.yml rm --force; docker-compose -f docker-compose.minimal.yml up -d'
alias dka='docker kill `docker ps -q`; docker rm `docker ps -qa`'
export HOSTIP=0.0.0.0

# Ldap
alias caedit='ldapvi -h ldaps://localhost:10636'

alias grep='grep --colour'
alias urldecode='python3 -c "import sys; from urllib.parse import unquote; print(unquote(sys.stdin.read()));"'
alias urlencode='python3 -c "import sys; from urllib.parse import quote; print(quote(sys.stdin.read()));"'

# Helm
export TILLER_NAMESPACE=tesla-staging

fix_video () {
    sudo killall VDCAssistant
}

# RSI
export ORD_CLUSTER=rsi-rackspace-net:443
export IAD_CLUSTER=iad-rsi-rackspace-net:443
export SSO=timo6944

use_ord() {
    export OPENSHIFT_USER=${SSO}/${ORD_CLUSTER}
    oc config set-context ord --cluster=${ORD_CLUSTER} --user=${OPENSHIFT_USER}
    oc login --server=rsi.rackspace.net
}

use_iad() {
    export OPENSHIFT_USER=${SSO}/${IAD_CLUSTER}
    oc config set-context iad --cluster=${IAD_CLUSTER} --user=${OPENSHIFT_USER}
    oc login --server=iad.rsi.rackspace.net
}

clean_project() {
    release=$1

    if [[ -z "${release}" ]]; then
        echo "ERROR: Release name is required."
        return
    fi

    oc delete all -l release=${release}
    oc delete serviceaccounts -l release=${release}
    oc delete secrets -l release=${release}
    oc delete pvc -l release=${release}
    oc delete configmaps -l release=${release}
    oc delete rolebindings -l release=${release}
    helm delete --purge ${release}
}

clean_project_label() {
    label=$1

    if [[ -z "${label}" ]]; then
        echo "ERROR: Label is required."
        return
    fi

    oc delete all -l ${label}
    oc delete serviceaccounts -l ${label}
    oc delete secrets -l ${label}
    oc delete pvc -l ${label}
    oc delete configmaps -l ${label}
    oc delete rolebindings -l ${label}
}


