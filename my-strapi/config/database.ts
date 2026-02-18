export default ({ env }: any) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME'),
      user: env('DATABASE_USERNAME'),
      password: env('DATABASE_PASSWORD'),
      ssl: false,
    },
    pool: {
      min: 2,
      max: 10,
    },
    acquireConnectionTimeout: 60000,
  },
});