const fs = require('fs');
const path = require('path');

function deleteNodeModules(dir) {
  const entries = fs.readdirSync(dir, { withFileTypes: true });

  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);

    if (entry.isDirectory()) {
      if (entry.name === 'node_modules') {
        console.log(`🧹 Eliminando: ${fullPath}`);
        fs.rmSync(fullPath, { recursive: true, force: true });
      } else {
        deleteNodeModules(fullPath);
      }
    }
  }
}

const root = process.argv[2] || process.cwd();
console.log(`🔍 Searching for node modules in: ${root}`);
deleteNodeModules(root);
console.log('✅ Completed successfully');
