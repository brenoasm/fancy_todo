export default {
  port: process.env.PORT || 5050,
  databaseUrl:
    process.env.DATABASE_URL ||
    'postgres://localhost/fancy_todo?user=admin&password=admin',
};
