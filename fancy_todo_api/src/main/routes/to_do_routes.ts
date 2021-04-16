import { Router } from 'express';

import { adaptRoute } from '../adapters';
import { makeLoadToDo } from '../factories';

export default (router: Router): void => {
  router.get('/load-todo', adaptRoute(makeLoadToDo()));
};
