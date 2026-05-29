const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const pkg = require('../package.json');

const exercisePkg = {
    name: pkg.name,
    description: pkg.description,
    author: pkg.author,
    contributors: pkg.contributors,
    license: pkg.license,
    repository: pkg.repository,
    devDependencies: {
        'coffeescript': pkg.devDependencies['coffeescript'],
        'jasmine-node': pkg.devDependencies['jasmine-node']
    },
    scripts: {
        test: pkg.scripts.test,
        watch: pkg.scripts.watch
    },
    packageManager: pkg.packageManager
};

fs.readdirSync(path.join(root, 'exercises/practice')).forEach(slug => {
    const dir = path.join(root, 'exercises/practice', slug);
    if (!fs.statSync(dir).isDirectory()) return;

    fs.writeFileSync(path.join(dir, 'package.json'), JSON.stringify(exercisePkg, null, 2) + '\n');
    console.log(`Synced ${slug}`);
});
