Set WshShell = CreateObject("WScript.Shell")
WshShell.Run """BurpSuite安装目录\jre\bin\java.exe"" --add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED --add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED -javaagent:BurpSuite安装目录/BurpLoaderKeygen.jar -noverify -jar BurpSuite安装目录\burpsuite_pro.jar", 0, False
