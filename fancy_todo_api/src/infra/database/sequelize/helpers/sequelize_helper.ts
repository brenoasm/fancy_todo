import { Sequelize } from 'sequelize';

export const SequelizeHelper = {
  client: null as Sequelize,
  uri: null as string,

  async connect(uri: string): Promise<void> {
    this.uri = uri;
    this.client = new Sequelize(uri);
  },

  async disconnect(): Promise<void> {
    await this.client.close();

    this.client = null;
  },
};
