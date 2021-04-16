import { LoadToDoController } from '../../../presentation/controllers';
import { Controller } from '../../../presentation/protocols';

export const makeLoadToDo = (): Controller => {
  const controller = new LoadToDoController();

  return controller;
};
