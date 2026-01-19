const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const pkg = require('../package.json');
delete pkg.private;

fs.readdirSync(path.join(root, 'exercises/practice')).forEach(slug => {
    const dir = path.join(root, 'exercises/practice', slug);
    if (!fs.statSync(dir).isDirectory()) return;

    const newPkg = {
        ...pkg,
        repository: { ...pkg.repository, directory: `exercises/practice/${slug}` }
    };

    fs.writeFileSync(path.join(dir, 'package.json'), JSON.stringify(newPkg, null, 2) + '\n');
    console.log(`Synced ${slug}`);
});
