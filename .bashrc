export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home"
export M2_HOME="/usr/local/apache-maven/apache-maven-3.2.1"
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/timo6944/.sdkman"
[[ -s "/Users/timo6944/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/timo6944/.sdkman/bin/sdkman-init.sh"
