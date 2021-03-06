import env from './config/env';

import { SequelizeHelper } from '../infra/database/sequelize/helpers';

SequelizeHelper.connect(env.databaseUrl)
  .then(async () => {
    const app = (await import('./config/app')).default;

    app.listen(env.port, () =>
      console.log(`Server running at http://localhost:${env.port}`)
    );
  })
  .catch(console.error);
