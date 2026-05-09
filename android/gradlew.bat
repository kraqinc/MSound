@echo off
if not exist gradle\wrapper\gradle-wrapper.jar (echo Descargando Gradle...)
./gradlew %*