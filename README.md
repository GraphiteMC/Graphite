# Graphite 
![Build Status](https://img.shields.io/github/actions/workflow/status/GraphiteMC/Graphite/build.yml)
![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/GraphiteMC/Graphite/ver%2F1.20.1)
___
A fork of [Purpur](https://purpurmc.org/) and [Paper](https://papermc.io/) adding customisation options to the server. 

This project would not be possible without the two projects above so please also check them out!
___
## How To (Server Admins)
Graphite compiles a Paperclip jar file that you use to run the server, it is ran like a normal jar file.

[Direct Download](https://github.com/GraphiteMC/Graphite/releases/download/latest-1.20.1/Graphite-paperclip-1.20.1-R0.1-SNAPSHOT-reobf.jar) (Latest 1.20.1)

[All Released Versions](https://github.com/GraphiteMC/Graphite/releases)

For a full guide on how to run the server file, [visit our documentation page](https://docs.graphitemc.org/getting-started/Prerequisites/).
___
## How To (Plugin Developers)
* See API patches [here](patches/api)
* See server patches [here](patches/server)

### Repository (Graphite-API)
* #### Maven
```xml
<repository>
    <id>graphitemc</id>
    <url>https://repo.graphitemc.org/releases</url>
</repository>

<dependency>
    <groupId>org.graphitemc.graphite</groupId>
    <artifactId>graphite-api</artifactId>
    <version>1.20.1-R0.1-SNAPSHOT</version>
    <scope>provided</scope>
</dependency>
```
* #### Gradle
```kotlin
repositories {
    maven("https://repo.graphitemc.org/releases")
}

dependencies {
    compileOnly("org.graphitemc.graphite:graphite-api:1.20.1-R0.1-SNAPSHOT")
}
```
### Repository (dev-bundle)
[For more on Paperweight](https://github.com/PaperMC/paperweight/).
```kotlin
plugins {
    id("io.papermc.paperweight.userdev") version "1.5.5"
}

repositories {
    maven("https://repo.graphitemc.org/releases")
}

dependencies {
    paperweight.devBundle("org.graphitemc.graphite", "1.20.1-R0.1-SNAPSHOT")
}
```
___
## How To (Source Compiling)
To compile Graphite you require JDK 17 and an internet connection.
1. Clone the Graphite repository to your machine.
2. Run `./gradlew applyPatches` and when that completes run `./gradlew createReobfBundlerJar` in your terminal.
3. Move the compiled jar found in `build/libs` to your server folder and run it.

If you find the process is too slow whilst compiling or applying patches, try using [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) or Linux.
___