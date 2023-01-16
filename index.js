const { createServer } = require('@lhci/server');

createServer({
  port: 9001,
  storage: {
    storageMethod: 'sql',
    sqlDialect: 'sqlite',
    sqlDatabasePath: '/db/db.sql',
  },
}).then(({ port }) => console.log('LHCI listening on port', port));
