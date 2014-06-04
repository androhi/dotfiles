#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# AndroidStudio
ANDROID_HOME=/Applications/Android\ Studio.app/sdk

# AndroidNDK
ANDROID_NDK_HOME=/Users/androhi/DevTools/android-ndk-r9c

# Path
PATH=/usr/local/bin:$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools:$ANDROID_HOME/tools:$ANDROID_NDK_HOME

export ANDROID_HOME ANDROID_NDK_HOME PATH

# deploygate
export ZAIM_DEPLOYGATE_USER='unicco'
export ZAIM_DEPLOYGATE_KEY='8033fe886176dd2e879dc6978957e77d7dbaf719'

export GRADLE_OPTS=-Xmx1024m
