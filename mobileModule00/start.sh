#!/usr/bin/env bash
set -e

export PUB_CACHE=/goinfre/lgracia-/.pub-cache
export GRADLE_USER_HOME=/goinfre/lgracia-/.gradle
export ANDROID_HOME=/goinfre/lgracia-/android/sdk
export ANDROID_SDK_ROOT="$ANDROID_HOME"

PROJECT=/home/lgracia-/goinfre/Piscine-Mobile---0

echo "Preparando entorno Flutter..."

mkdir -p "$PUB_CACHE"
mkdir -p "$GRADLE_USER_HOME"

if [ ! -d "$ANDROID_HOME" ]; then
    echo "ERROR: Android SDK no encontrado"
    exit 1
fi

if [ ! -d "$PROJECT" ]; then
    echo "ERROR: Proyecto no encontrado. Hay que clonarlo."
    exit 1
fi

cd "$PROJECT"

echo "Entorno preparado."
echo "Proyecto: $PROJECT"

flutter doctor -v