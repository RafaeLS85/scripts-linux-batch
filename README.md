## 📦 Requisitos

| Script                          | Requisitos                             |
|----------------------------------|-----------------------------------------|
| `remove-node-modules.bat`       | Windows CMD                            |
| `remove-node-modules.sh`        | Bash (Linux, WSL o Git Bash) + `find`  |
| `remove-node-modules.js`        | Node.js v14+ instalado (`node`, `npm`) |


## 🪟 Windows

### `Windows/remove-node-modules.bat`

#### Uso desde terminal:

```cmd
remove-node-modules.bat D:\ruta\al\directorio
```

### Ejemplo
remove-node-modules.bat D:\WORKSPACE


## 🐧 Linux / WSL / Git Bash
Linux/remove-node-modules.sh
1. Dar permisos de ejecución:
``` bash
chmod +x Linux/remove-node-modules.sh
```

2. Ejecutar:

``` bash
./Linux/remove-node-modules.sh /ruta/al/directorio
```


## 🌐 Script multiplataforma con Node.js
cross-platform/remove-node-modules.js
Este script funciona en Windows, Linux o WSL, siempre que tengas Node.js instalado.

1. Instalar Node (si no lo tenés):

``` bash
# Ubuntu / Debian
sudo apt update && sudo apt install nodejs npm

# Windows: descargar desde https://nodejs.org/
```

2. (Opcional) Instalar dependencias si se modulariza:
```bash
npm install
El script actual no requiere dependencias externas, pero podés convertirlo en un CLI con commander, chalk, etc.
```

3. Ejecutar:
```bash
node cross-platform/remove-node-modules.js /ruta/al/directorio
```


