import { Controller, HttpRequest, HttpResponse } from './load_to_do_protocols';
import { ok } from '../../helpers';

export class LoadToDoController implements Controller {
  constructor() {}

  async handle(httpRequest: HttpRequest): Promise<HttpResponse> {
    return ok({ message: 'Hello World' });
  }
}
